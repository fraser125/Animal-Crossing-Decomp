lbl_8051E854:
/* 8051E854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051E858  7C 08 02 A6 */	mflr r0
/* 8051E85C  38 80 00 0D */	li r4, 0xd
/* 8051E860  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051E864  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051E868  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051E86C  7C 7E 1B 78 */	mr r30, r3
/* 8051E870  38 60 00 44 */	li r3, 0x44
/* 8051E874  4B E7 F5 59 */	bl mEv_get_save_area
/* 8051E878  7C 7F 1B 78 */	mr r31, r3
/* 8051E87C  4B B3 E4 79 */	bl fqrand
/* 8051E880  3C 60 80 65 */	lis r3, lit_582@ha /* 0x806490F0@ha */
/* 8051E884  C0 03 90 F0 */	lfs f0, lit_582@l(r3)  /* 0x806490F0@l */
/* 8051E888  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051E88C  FC 00 00 1E */	fctiwz f0, f0
/* 8051E890  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051E894  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051E898  38 63 23 FE */	addi r3, r3, 0x23fe
/* 8051E89C  4B E7 9C 79 */	bl mDemo_Set_msg_num
/* 8051E8A0  38 60 00 01 */	li r3, 1
/* 8051E8A4  4B E7 9F A5 */	bl mDemo_Set_talk_turn
/* 8051E8A8  38 60 00 03 */	li r3, 3
/* 8051E8AC  4B E7 A0 75 */	bl mDemo_Set_camera
/* 8051E8B0  3C 60 80 52 */	lis r3, aEDZ_talk_okiagaru@ha /* 0x8051E728@ha */
/* 8051E8B4  38 03 E7 28 */	addi r0, r3, aEDZ_talk_okiagaru@l /* 0x8051E728@l */
/* 8051E8B8  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8051E8BC  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8051E8C0  60 00 00 01 */	ori r0, r0, 1
/* 8051E8C4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8051E8C8  A8 7E 09 78 */	lha r3, 0x978(r30)
/* 8051E8CC  7C 60 07 35 */	extsh. r0, r3
/* 8051E8D0  41 82 00 08 */	beq lbl_8051E8D8
/* 8051E8D4  98 7E 09 A7 */	stb r3, 0x9a7(r30)
lbl_8051E8D8:
/* 8051E8D8  38 00 00 00 */	li r0, 0
/* 8051E8DC  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 8051E8E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051E8E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051E8E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051E8EC  7C 08 03 A6 */	mtlr r0
/* 8051E8F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8051E8F4  4E 80 00 20 */	blr 
