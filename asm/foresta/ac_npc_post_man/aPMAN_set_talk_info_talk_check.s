lbl_8056DED8:
/* 8056DED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056DEDC  7C 08 02 A6 */	mflr r0
/* 8056DEE0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056DEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056DEE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056DEEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8056DEF0  7C 7E 1B 78 */	mr r30, r3
/* 8056DEF4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8056DEF8  3F E3 00 02 */	addis r31, r3, 2
/* 8056DEFC  80 7F 60 F8 */	lwz r3, 0x60f8(r31)
/* 8056DF00  28 03 00 00 */	cmplwi r3, 0
/* 8056DF04  41 82 00 40 */	beq lbl_8056DF44
/* 8056DF08  81 83 00 00 */	lwz r12, 0(r3)
/* 8056DF0C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D011@ha */
/* 8056DF10  38 63 D0 11 */	addi r3, r3, 0xD011 /* 0x0000D011@l */
/* 8056DF14  7D 89 03 A6 */	mtctr r12
/* 8056DF18  4E 80 04 21 */	bctrl 
/* 8056DF1C  2C 03 00 00 */	cmpwi r3, 0
/* 8056DF20  40 82 00 24 */	bne lbl_8056DF44
/* 8056DF24  80 BF 60 F8 */	lwz r5, 0x60f8(r31)
/* 8056DF28  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D011@ha */
/* 8056DF2C  38 63 D0 11 */	addi r3, r3, 0xD011 /* 0x0000D011@l */
/* 8056DF30  38 80 00 01 */	li r4, 1
/* 8056DF34  81 85 00 08 */	lwz r12, 8(r5)
/* 8056DF38  7D 89 03 A6 */	mtctr r12
/* 8056DF3C  4E 80 04 21 */	bctrl 
/* 8056DF40  48 00 00 3C */	b lbl_8056DF7C
lbl_8056DF44:
/* 8056DF44  88 1E 09 A0 */	lbz r0, 0x9a0(r30)
/* 8056DF48  54 1F 10 3A */	slwi r31, r0, 2
/* 8056DF4C  4B AE ED A9 */	bl fqrand
/* 8056DF50  3C 80 80 6C */	lis r4, rnd_base@ha /* 0x806BEC48@ha */
/* 8056DF54  3C 60 80 6C */	lis r3, msg_no_base@ha /* 0x806BEC50@ha */
/* 8056DF58  38 84 EC 48 */	addi r4, r4, rnd_base@l /* 0x806BEC48@l */
/* 8056DF5C  7C 04 FC 2E */	lfsx f0, r4, r31
/* 8056DF60  38 63 EC 50 */	addi r3, r3, msg_no_base@l /* 0x806BEC50@l */
/* 8056DF64  7C 03 F8 2E */	lwzx r0, r3, r31
/* 8056DF68  EC 00 00 72 */	fmuls f0, f0, f1
/* 8056DF6C  FC 00 00 1E */	fctiwz f0, f0
/* 8056DF70  D8 01 00 08 */	stfd f0, 8(r1)
/* 8056DF74  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8056DF78  7C 60 1A 14 */	add r3, r0, r3
lbl_8056DF7C:
/* 8056DF7C  4B E2 A5 99 */	bl mDemo_Set_msg_num
/* 8056DF80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056DF84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056DF88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8056DF8C  7C 08 03 A6 */	mtlr r0
/* 8056DF90  38 21 00 20 */	addi r1, r1, 0x20
/* 8056DF94  4E 80 00 20 */	blr 
