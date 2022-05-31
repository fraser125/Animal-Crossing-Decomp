lbl_804EC928:
/* 804EC928  7C 80 07 35 */	extsh. r0, r4
/* 804EC92C  40 82 00 24 */	bne lbl_804EC950
/* 804EC930  2C 03 00 01 */	cmpwi r3, 1
/* 804EC934  40 82 00 0C */	bne lbl_804EC940
/* 804EC938  38 60 00 2F */	li r3, 0x2f
/* 804EC93C  4E 80 00 20 */	blr 
lbl_804EC940:
/* 804EC940  2C 03 00 02 */	cmpwi r3, 2
/* 804EC944  40 82 00 88 */	bne lbl_804EC9CC
/* 804EC948  38 60 00 2E */	li r3, 0x2e
/* 804EC94C  4E 80 00 20 */	blr 
lbl_804EC950:
/* 804EC950  7C 80 07 34 */	extsh r0, r4
/* 804EC954  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804EC958  40 82 00 24 */	bne lbl_804EC97C
/* 804EC95C  2C 03 00 03 */	cmpwi r3, 3
/* 804EC960  40 82 00 0C */	bne lbl_804EC96C
/* 804EC964  38 60 00 2F */	li r3, 0x2f
/* 804EC968  4E 80 00 20 */	blr 
lbl_804EC96C:
/* 804EC96C  2C 03 00 04 */	cmpwi r3, 4
/* 804EC970  40 82 00 5C */	bne lbl_804EC9CC
/* 804EC974  38 60 00 2E */	li r3, 0x2e
/* 804EC978  4E 80 00 20 */	blr 
lbl_804EC97C:
/* 804EC97C  2C 00 80 00 */	cmpwi r0, -32768
/* 804EC980  40 82 00 24 */	bne lbl_804EC9A4
/* 804EC984  2C 03 00 01 */	cmpwi r3, 1
/* 804EC988  40 82 00 0C */	bne lbl_804EC994
/* 804EC98C  38 60 00 2E */	li r3, 0x2e
/* 804EC990  4E 80 00 20 */	blr 
lbl_804EC994:
/* 804EC994  2C 03 00 02 */	cmpwi r3, 2
/* 804EC998  40 82 00 34 */	bne lbl_804EC9CC
/* 804EC99C  38 60 00 2F */	li r3, 0x2f
/* 804EC9A0  4E 80 00 20 */	blr 
lbl_804EC9A4:
/* 804EC9A4  2C 00 C0 00 */	cmpwi r0, -16384
/* 804EC9A8  40 82 00 24 */	bne lbl_804EC9CC
/* 804EC9AC  2C 03 00 03 */	cmpwi r3, 3
/* 804EC9B0  40 82 00 0C */	bne lbl_804EC9BC
/* 804EC9B4  38 60 00 2E */	li r3, 0x2e
/* 804EC9B8  4E 80 00 20 */	blr 
lbl_804EC9BC:
/* 804EC9BC  2C 03 00 04 */	cmpwi r3, 4
/* 804EC9C0  40 82 00 0C */	bne lbl_804EC9CC
/* 804EC9C4  38 60 00 2F */	li r3, 0x2f
/* 804EC9C8  4E 80 00 20 */	blr 
lbl_804EC9CC:
/* 804EC9CC  38 60 00 2F */	li r3, 0x2f
/* 804EC9D0  4E 80 00 20 */	blr 
