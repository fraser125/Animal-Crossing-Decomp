lbl_805E1250:
/* 805E1250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E1254  7C 08 02 A6 */	mflr r0
/* 805E1258  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E125C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E1260  7C 7F 1B 78 */	mr r31, r3
/* 805E1264  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E1268  88 03 09 F8 */	lbz r0, 0x9f8(r3)
/* 805E126C  28 00 00 00 */	cmplwi r0, 0
/* 805E1270  40 82 00 0C */	bne lbl_805E127C
/* 805E1274  38 00 00 01 */	li r0, 1
/* 805E1278  98 03 09 F8 */	stb r0, 0x9f8(r3)
lbl_805E127C:
/* 805E127C  7F E3 FB 78 */	mr r3, r31
/* 805E1280  4B FF FF 65 */	bl mHB_hboard_ovl_init
/* 805E1284  7F E3 FB 78 */	mr r3, r31
/* 805E1288  4B FF FF 3D */	bl mHB_hboard_ovl_set_proc
/* 805E128C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E1290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E1294  7C 08 03 A6 */	mtlr r0
/* 805E1298  38 21 00 10 */	addi r1, r1, 0x10
/* 805E129C  4E 80 00 20 */	blr 
