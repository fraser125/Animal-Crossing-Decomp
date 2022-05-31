lbl_805D8330:
/* 805D8330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D8334  7C 08 02 A6 */	mflr r0
/* 805D8338  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D833C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D8340  7C 7F 1B 78 */	mr r31, r3
/* 805D8344  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805D8348  80 04 09 A4 */	lwz r0, 0x9a4(r4)
/* 805D834C  28 00 00 00 */	cmplwi r0, 0
/* 805D8350  40 82 00 10 */	bne lbl_805D8360
/* 805D8354  3C 60 81 21 */	lis r3, ee_ovl_data@ha /* 0x812116F8@ha */
/* 805D8358  38 03 16 F8 */	addi r0, r3, ee_ovl_data@l /* 0x812116F8@l */
/* 805D835C  90 04 09 A4 */	stw r0, 0x9a4(r4)
lbl_805D8360:
/* 805D8360  3C 60 81 21 */	lis r3, ee_ovl_data@ha /* 0x812116F8@ha */
/* 805D8364  38 00 00 00 */	li r0, 0
/* 805D8368  38 83 16 F8 */	addi r4, r3, ee_ovl_data@l /* 0x812116F8@l */
/* 805D836C  7F E3 FB 78 */	mr r3, r31
/* 805D8370  98 04 00 00 */	stb r0, 0(r4)
/* 805D8374  98 04 00 01 */	stb r0, 1(r4)
/* 805D8378  98 04 00 02 */	stb r0, 2(r4)
/* 805D837C  98 04 00 03 */	stb r0, 3(r4)
/* 805D8380  4B FF FF 8D */	bl mEE_editEndChk_ovl_init
/* 805D8384  7F E3 FB 78 */	mr r3, r31
/* 805D8388  4B FF FF 65 */	bl mEE_editEndChk_ovl_set_proc
/* 805D838C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D8390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D8394  7C 08 03 A6 */	mtlr r0
/* 805D8398  38 21 00 10 */	addi r1, r1, 0x10
/* 805D839C  4E 80 00 20 */	blr 
