using StaticArrays
import Base:*,==,-

# Generic Optical Element
struct OpticalElement
    M::SMatrix{2,2}
end

*(ℇ1::T,ℇ2::T) where {T<:OpticalElement} = OpticalElement(ℇ1.M * ℇ2.M)
==(ℇ1::T,ℇ2::T) where {T<:OpticalElement} = isequal(ℇ1.M,ℇ2.M)
-(ℇ::T) where {T<:OpticalElement} = OpticalElement(-ℇ.M)
# FreeSpace propagation
FreeSpace(L::Real) = OpticalElement([[1 L]; [0 1]])

ThinLens(f::Real) = OpticalElement([[1 0]; [-1/f 1]])

FlatInterface(n1::Real,n2::Real) = OpticalElement([[1 0]; [0 n1/n2]])

CurvedInterface(n1::Real,n2::Real, R::Real) = OpticalElement([[1 0]; [-(n2-n1)/(R*n2) n1/n2]])

FlatMirror() = OpticalElement([[1 0]; [0 1]])

CurvedMirror(R::Real) =  OpticalElement([[1 0]; [-2/R 1]])

ThickLens(R::Real,d::Real,n1::Real,n2::Real) = CurvedInterface(n1,n2, R)*FreeSpace(d)*CurvedInterface(n2,n1, R)
