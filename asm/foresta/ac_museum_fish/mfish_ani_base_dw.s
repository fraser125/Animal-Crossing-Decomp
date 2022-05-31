lbl_80434AEC:
/* 80434AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434AF0  7C 08 02 A6 */	mflr r0
/* 80434AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434AF8  4B FF FC 0D */	bl mfish_onefish_dw
/* 80434AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434B00  7C 08 03 A6 */	mtlr r0
/* 80434B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80434B08  4E 80 00 20 */	blr 
