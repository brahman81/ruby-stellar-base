# This code was automatically generated using xdrgen
# DO NOT EDIT or your changes may be overwritten

require 'xdr'

# === xdr source ============================================================
#
#   struct LedgerEntry
#   {
#       uint32 lastModifiedLedgerSeq; // ledger the LedgerEntry was last changed
#   
#       union switch (LedgerEntryType type)
#       {
#       case ACCOUNT:
#           AccountEntry account;
#       case TRUSTLINE:
#           TrustLineEntry trustLine;
#       case OFFER:
#           OfferEntry offer;
#       }
#       data;
#   
#       // reserved for future use
#       union switch (int v)
#       {
#       case 0:
#           void;
#       }
#       ext;
#   };
#
# ===========================================================================
module Stellar
  class LedgerEntry < XDR::Struct
    include XDR::Namespace

    autoload :Data
    autoload :Ext

    attribute :last_modified_ledger_seq, Uint32
    attribute :data,                     Data
    attribute :ext,                      Ext
  end
end
