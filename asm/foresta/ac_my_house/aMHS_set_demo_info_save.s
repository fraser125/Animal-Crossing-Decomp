lbl_805B54AC:
/* 805B54AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B54B0  7C 08 02 A6 */	mflr r0
/* 805B54B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B54B8  4B FF FF B1 */	bl aMHS_set_demo_info
/* 805B54BC  38 60 02 49 */	li r3, 0x249
/* 805B54C0  4B DC 66 4D */	bl mBGMPsComp_make_ps_wipe
/* 805B54C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B54C8  7C 08 03 A6 */	mtlr r0
/* 805B54CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805B54D0  4E 80 00 20 */	blr 
