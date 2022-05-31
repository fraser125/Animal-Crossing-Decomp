lbl_8058F3D8:
/* 8058F3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F3DC  7C 08 02 A6 */	mflr r0
/* 8058F3E0  38 80 00 09 */	li r4, 9
/* 8058F3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F3E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058F3EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8058F3F0  7C 7E 1B 78 */	mr r30, r3
/* 8058F3F4  38 60 00 0E */	li r3, 0xe
/* 8058F3F8  4B E0 E9 D5 */	bl mEv_get_save_area
/* 8058F3FC  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8058F400  7C 7F 1B 78 */	mr r31, r3
/* 8058F404  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8058F408  90 1E 09 64 */	stw r0, 0x964(r30)
/* 8058F40C  4B E0 AF A9 */	bl mDemo_Set_ListenAble
/* 8058F410  7F C3 F3 78 */	mr r3, r30
/* 8058F414  4B E0 AE 85 */	bl mDemo_Start
/* 8058F418  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8058F41C  38 80 00 20 */	li r4, 0x20
/* 8058F420  A0 BF 00 12 */	lhz r5, 0x12(r31)
/* 8058F424  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058F428  38 03 2F A1 */	addi r0, r3, 0x2fa1
/* 8058F42C  7C 80 00 30 */	slw r0, r4, r0
/* 8058F430  7C A0 03 78 */	or r0, r5, r0
/* 8058F434  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8058F438  A8 1E 09 A2 */	lha r0, 0x9a2(r30)
/* 8058F43C  2C 00 00 00 */	cmpwi r0, 0
/* 8058F440  41 82 00 30 */	beq lbl_8058F470
/* 8058F444  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058F448  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8058F44C  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8058F450  38 60 00 1E */	li r3, 0x1e
/* 8058F454  3C A5 00 02 */	addis r5, r5, 2
/* 8058F458  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 8058F45C  81 85 00 04 */	lwz r12, 4(r5)
/* 8058F460  7D 89 03 A6 */	mtctr r12
/* 8058F464  4E 80 04 21 */	bctrl 
/* 8058F468  38 00 00 00 */	li r0, 0
/* 8058F46C  B0 1E 09 A2 */	sth r0, 0x9a2(r30)
lbl_8058F470:
/* 8058F470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F474  38 60 00 01 */	li r3, 1
/* 8058F478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058F47C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058F480  7C 08 03 A6 */	mtlr r0
/* 8058F484  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F488  4E 80 00 20 */	blr 
