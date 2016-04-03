# Julia wrapper for header: include/blockmat.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

const NOSHORTS = 1

# begin enum blockcat
typealias blockcat UInt
const DIAG = (UInt)(0)
const MATRIX = (UInt)(1)
const PACKEDMATRIX = (UInt)(2)
# end enum blockcat

type blockdatarec
    _blockdatarec::Ref{Cdouble}
end

type blockrec
    data::blockdatarec
    blockcategory::blockcat
    blocksize::Cint
end

type blockmatrix
    nblocks::Cint
    blocks::Ref{blockrec}
end

type sparseblock
    next::Ref{sparseblock}
    nextbyblock::Ref{sparseblock}
    entries::Ref{Cdouble}
    iindices::Ref{Cint}
    jindices::Ref{Cint}
    numentries::Cint
    blocknum::Cint
    blocksize::Cint
    constraintnum::Cint
    issparse::Cint
end

type constraintmatrix
    blocks::Ref{sparseblock}
end

# Skipping MacroDefinition: ijtok ( iiii , jjjj , lda ) ( ( jjjj - 1 ) * lda + iiii - 1 )
# Skipping MacroDefinition: ijtokp ( iii , jjj , lda ) ( ( iii + jjj * ( jjj - 1 ) / 2 ) - 1 )
# Skipping MacroDefinition: ktoi ( k , lda ) ( ( k % lda ) + 1 )
# Skipping MacroDefinition: ktoj ( k , lda ) ( ( k / lda ) + 1 )

type paramstruc
    axtol::Cdouble
    atytol::Cdouble
    objtol::Cdouble
    pinftol::Cdouble
    dinftol::Cdouble
    maxiter::Cint
    minstepfrac::Cdouble
    maxstepfrac::Cdouble
    minstepp::Cdouble
    minstepd::Cdouble
    usexzgap::Cint
    tweakgap::Cint
    affine::Cint
    perturbobj::Cdouble
    fastmode::Cint
end