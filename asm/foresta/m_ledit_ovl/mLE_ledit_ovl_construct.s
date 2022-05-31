lbl_805E54C8:
/* 805E54C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E54CC  7C 08 02 A6 */	mflr r0
/* 805E54D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E54D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E54D8  7C 7F 1B 78 */	mr r31, r3
/* 805E54DC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E54E0  88 03 09 F9 */	lbz r0, 0x9f9(r3)
/* 805E54E4  28 00 00 00 */	cmplwi r0, 0
/* 805E54E8  40 82 00 0C */	bne lbl_805E54F4
/* 805E54EC  38 00 00 01 */	li r0, 1
/* 805E54F0  98 03 09 F9 */	stb r0, 0x9f9(r3)
lbl_805E54F4:
/* 805E54F4  7F E3 FB 78 */	mr r3, r31
/* 805E54F8  4B FF FE AD */	bl mLE_ledit_ovl_init
/* 805E54FC  7F E3 FB 78 */	mr r3, r31
/* 805E5500  4B FF FE 85 */	bl mLE_ledit_ovl_set_proc
/* 805E5504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E550C  7C 08 03 A6 */	mtlr r0
/* 805E5510  38 21 00 10 */	addi r1, r1, 0x10
/* 805E5514  4E 80 00 20 */	blr 
