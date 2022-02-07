// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#ifndef RCPP_cooltools_RCPPEXPORTS_H_GEN_
#define RCPP_cooltools_RCPPEXPORTS_H_GEN_

#include <Rcpp.h>

namespace cooltools {

    using namespace Rcpp;

    namespace {
        void validateSignature(const char* sig) {
            Rcpp::Function require = Rcpp::Environment::base_env()["require"];
            require("cooltools", Rcpp::Named("quietly") = true);
            typedef int(*Ptr_validate)(const char*);
            static Ptr_validate p_validate = (Ptr_validate)
                R_GetCCallable("cooltools", "_cooltools_RcppExport_validate");
            if (!p_validate(sig)) {
                throw Rcpp::function_not_exported(
                    "C++ function with signature '" + std::string(sig) + "' not found in cooltools");
            }
        }
    }

    inline List paircountxx(NumericMatrix x, double dr, double rmax) {
        typedef SEXP(*Ptr_paircountxx)(SEXP,SEXP,SEXP);
        static Ptr_paircountxx p_paircountxx = NULL;
        if (p_paircountxx == NULL) {
            validateSignature("List(*paircountxx)(NumericMatrix,double,double)");
            p_paircountxx = (Ptr_paircountxx)R_GetCCallable("cooltools", "_cooltools_paircountxx");
        }
        RObject rcpp_result_gen;
        {
            RNGScope RCPP_rngScope_gen;
            rcpp_result_gen = p_paircountxx(Shield<SEXP>(Rcpp::wrap(x)), Shield<SEXP>(Rcpp::wrap(dr)), Shield<SEXP>(Rcpp::wrap(rmax)));
        }
        if (rcpp_result_gen.inherits("interrupted-error"))
            throw Rcpp::internal::InterruptedException();
        if (Rcpp::internal::isLongjumpSentinel(rcpp_result_gen))
            throw Rcpp::LongjumpException(rcpp_result_gen);
        if (rcpp_result_gen.inherits("try-error"))
            throw Rcpp::exception(Rcpp::as<std::string>(rcpp_result_gen).c_str());
        return Rcpp::as<List >(rcpp_result_gen);
    }

    inline List paircountxy(NumericMatrix x, NumericMatrix y, double dr, double rmax) {
        typedef SEXP(*Ptr_paircountxy)(SEXP,SEXP,SEXP,SEXP);
        static Ptr_paircountxy p_paircountxy = NULL;
        if (p_paircountxy == NULL) {
            validateSignature("List(*paircountxy)(NumericMatrix,NumericMatrix,double,double)");
            p_paircountxy = (Ptr_paircountxy)R_GetCCallable("cooltools", "_cooltools_paircountxy");
        }
        RObject rcpp_result_gen;
        {
            RNGScope RCPP_rngScope_gen;
            rcpp_result_gen = p_paircountxy(Shield<SEXP>(Rcpp::wrap(x)), Shield<SEXP>(Rcpp::wrap(y)), Shield<SEXP>(Rcpp::wrap(dr)), Shield<SEXP>(Rcpp::wrap(rmax)));
        }
        if (rcpp_result_gen.inherits("interrupted-error"))
            throw Rcpp::internal::InterruptedException();
        if (Rcpp::internal::isLongjumpSentinel(rcpp_result_gen))
            throw Rcpp::LongjumpException(rcpp_result_gen);
        if (rcpp_result_gen.inherits("try-error"))
            throw Rcpp::exception(Rcpp::as<std::string>(rcpp_result_gen).c_str());
        return Rcpp::as<List >(rcpp_result_gen);
    }

    inline List paircountxx1d(NumericVector x, double dr, double rmax) {
        typedef SEXP(*Ptr_paircountxx1d)(SEXP,SEXP,SEXP);
        static Ptr_paircountxx1d p_paircountxx1d = NULL;
        if (p_paircountxx1d == NULL) {
            validateSignature("List(*paircountxx1d)(NumericVector,double,double)");
            p_paircountxx1d = (Ptr_paircountxx1d)R_GetCCallable("cooltools", "_cooltools_paircountxx1d");
        }
        RObject rcpp_result_gen;
        {
            RNGScope RCPP_rngScope_gen;
            rcpp_result_gen = p_paircountxx1d(Shield<SEXP>(Rcpp::wrap(x)), Shield<SEXP>(Rcpp::wrap(dr)), Shield<SEXP>(Rcpp::wrap(rmax)));
        }
        if (rcpp_result_gen.inherits("interrupted-error"))
            throw Rcpp::internal::InterruptedException();
        if (Rcpp::internal::isLongjumpSentinel(rcpp_result_gen))
            throw Rcpp::LongjumpException(rcpp_result_gen);
        if (rcpp_result_gen.inherits("try-error"))
            throw Rcpp::exception(Rcpp::as<std::string>(rcpp_result_gen).c_str());
        return Rcpp::as<List >(rcpp_result_gen);
    }

    inline List paircountxy1d(NumericVector x, NumericVector y, double dr, double rmax) {
        typedef SEXP(*Ptr_paircountxy1d)(SEXP,SEXP,SEXP,SEXP);
        static Ptr_paircountxy1d p_paircountxy1d = NULL;
        if (p_paircountxy1d == NULL) {
            validateSignature("List(*paircountxy1d)(NumericVector,NumericVector,double,double)");
            p_paircountxy1d = (Ptr_paircountxy1d)R_GetCCallable("cooltools", "_cooltools_paircountxy1d");
        }
        RObject rcpp_result_gen;
        {
            RNGScope RCPP_rngScope_gen;
            rcpp_result_gen = p_paircountxy1d(Shield<SEXP>(Rcpp::wrap(x)), Shield<SEXP>(Rcpp::wrap(y)), Shield<SEXP>(Rcpp::wrap(dr)), Shield<SEXP>(Rcpp::wrap(rmax)));
        }
        if (rcpp_result_gen.inherits("interrupted-error"))
            throw Rcpp::internal::InterruptedException();
        if (Rcpp::internal::isLongjumpSentinel(rcpp_result_gen))
            throw Rcpp::LongjumpException(rcpp_result_gen);
        if (rcpp_result_gen.inherits("try-error"))
            throw Rcpp::exception(Rcpp::as<std::string>(rcpp_result_gen).c_str());
        return Rcpp::as<List >(rcpp_result_gen);
    }

}

#endif // RCPP_cooltools_RCPPEXPORTS_H_GEN_
