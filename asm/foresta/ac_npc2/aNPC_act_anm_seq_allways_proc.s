lbl_8053F1C8:
/* 8053F1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F1CC  7C 08 02 A6 */	mflr r0
/* 8053F1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F1D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F1D8  7C 7F 1B 78 */	mr r31, r3
/* 8053F1DC  4B FF FF D5 */	bl aNPC_act_anm_seq
/* 8053F1E0  2C 03 00 00 */	cmpwi r3, 0
/* 8053F1E4  40 82 00 0C */	bne lbl_8053F1F0
/* 8053F1E8  38 00 00 FF */	li r0, 0xff
/* 8053F1EC  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8053F1F0:
/* 8053F1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F1F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F1F8  7C 08 03 A6 */	mtlr r0
/* 8053F1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F200  4E 80 00 20 */	blr 
