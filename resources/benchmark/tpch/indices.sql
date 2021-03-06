-- Based on some online resource, not necessarily the indexes prescribed / allowed by TPC-H
-- Used to make sqlite as fast as possible

CREATE INDEX I_L_SHIPDATE ON LINEITEM(L_SHIPDATE);
CREATE INDEX I_L_SUPPKEY_PARTKEY ON LINEITEM(L_PARTKEY, L_SUPPKEY);
CREATE INDEX I_L_PARTKEY ON LINEITEM(L_PARTKEY);
CREATE INDEX I_L_SUPPKEY ON LINEITEM(L_SUPPKEY);
CREATE INDEX I_L_RECEIPTDATE ON LINEITEM(L_RECEIPTDATE);
CREATE INDEX I_L_ORDERKEY ON LINEITEM(L_ORDERKEY);
CREATE INDEX I_L_ORDERKEY_QUANTITY ON LINEITEM(L_ORDERKEY, L_QUANTITY);
CREATE INDEX I_L_COMMITDATE ON LINEITEM(L_COMMITDATE);

CREATE INDEX I_C_NATIONKEY ON CUSTOMER (C_NATIONKEY);

CREATE INDEX I_O_ORDERDATE ON ORDERS (O_ORDERDATE);
CREATE INDEX I_O_CUSTKEY ON ORDERS (O_CUSTKEY);

CREATE INDEX I_S_NATIONKEY ON SUPPLIER (S_NATIONKEY);

CREATE INDEX I_PS_PARTKEY ON PARTSUPP (PS_PARTKEY);
CREATE INDEX I_PS_SUPPKEY ON PARTSUPP (PS_SUPPKEY);

CREATE INDEX I_N_REGIONKEY ON NATION (N_REGIONKEY);