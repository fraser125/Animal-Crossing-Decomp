lbl_803FE644:
/* 803FE644  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FE648  7C 08 02 A6 */	mflr r0
/* 803FE64C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FE650  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE654  4B C9 C8 7D */	bl func_8009AED0
/* 803FE658  3C 80 81 19 */	lis r4, l_memMgr@ha /* 0x81197638@ha */
/* 803FE65C  7C 7D 1B 78 */	mr r29, r3
/* 803FE660  38 64 76 38 */	addi r3, r4, l_memMgr@l /* 0x81197638@l */
/* 803FE664  3B C0 00 19 */	li r30, 0x19
/* 803FE668  80 83 01 88 */	lwz r4, 0x188(r3)
/* 803FE66C  3B 83 00 14 */	addi r28, r3, 0x14
/* 803FE670  80 03 01 8C */	lwz r0, 0x18c(r3)
/* 803FE674  7C 7F 1B 78 */	mr r31, r3
/* 803FE678  38 84 00 01 */	addi r4, r4, 1
/* 803FE67C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 803FE680  2C 00 00 00 */	cmpwi r0, 0
/* 803FE684  90 83 01 88 */	stw r4, 0x188(r3)
/* 803FE688  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803FE68C  40 82 00 FC */	bne lbl_803FE788
/* 803FE690  28 00 00 07 */	cmplwi r0, 7
/* 803FE694  40 80 00 E8 */	bge lbl_803FE77C
/* 803FE698  3C 80 80 66 */	lis r4, erase_proc_3226@ha /* 0x8065E95C@ha */
/* 803FE69C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803FE6A0  38 84 E9 5C */	addi r4, r4, erase_proc_3226@l /* 0x8065E95C@l */
/* 803FE6A4  7D 84 00 2E */	lwzx r12, r4, r0
/* 803FE6A8  7F 84 E3 78 */	mr r4, r28
/* 803FE6AC  7D 89 03 A6 */	mtctr r12
/* 803FE6B0  4E 80 04 21 */	bctrl 
/* 803FE6B4  2C 03 00 01 */	cmpwi r3, 1
/* 803FE6B8  40 82 00 20 */	bne lbl_803FE6D8
/* 803FE6BC  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FE6C0  2C 00 00 07 */	cmpwi r0, 7
/* 803FE6C4  40 82 00 4C */	bne lbl_803FE710
/* 803FE6C8  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FE6CC  3B C0 00 00 */	li r30, 0
/* 803FE6D0  90 1D 00 00 */	stw r0, 0(r29)
/* 803FE6D4  48 00 00 3C */	b lbl_803FE710
lbl_803FE6D8:
/* 803FE6D8  2C 03 00 00 */	cmpwi r3, 0
/* 803FE6DC  41 82 00 34 */	beq lbl_803FE710
/* 803FE6E0  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FE6E4  2C 00 00 00 */	cmpwi r0, 0
/* 803FE6E8  41 82 00 0C */	beq lbl_803FE6F4
/* 803FE6EC  2C 00 00 01 */	cmpwi r0, 1
/* 803FE6F0  40 82 00 1C */	bne lbl_803FE70C
lbl_803FE6F4:
/* 803FE6F4  90 1D 00 00 */	stw r0, 0(r29)
/* 803FE6F8  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FE6FC  1C 80 00 94 */	mulli r4, r0, 0x94
/* 803FE700  38 04 00 CC */	addi r0, r4, 0xcc
/* 803FE704  7F DF 00 2E */	lwzx r30, r31, r0
/* 803FE708  48 00 00 08 */	b lbl_803FE710
lbl_803FE70C:
/* 803FE70C  3B C0 00 16 */	li r30, 0x16
lbl_803FE710:
/* 803FE710  2C 03 FF FF */	cmpwi r3, -1
/* 803FE714  41 82 00 18 */	beq lbl_803FE72C
/* 803FE718  2C 03 00 01 */	cmpwi r3, 1
/* 803FE71C  40 82 00 8C */	bne lbl_803FE7A8
/* 803FE720  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FE724  2C 00 00 07 */	cmpwi r0, 7
/* 803FE728  40 82 00 80 */	bne lbl_803FE7A8
lbl_803FE72C:
/* 803FE72C  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 803FE730  2C 00 00 AA */	cmpwi r0, 0xaa
/* 803FE734  41 80 00 18 */	blt lbl_803FE74C
/* 803FE738  38 60 00 53 */	li r3, 0x53
/* 803FE73C  48 22 F7 E9 */	bl sAdo_SysLevStop
/* 803FE740  7F E3 FB 78 */	mr r3, r31
/* 803FE744  4B FF BD 89 */	bl mCD_ClearMemMgr_com2
/* 803FE748  48 00 00 60 */	b lbl_803FE7A8
lbl_803FE74C:
/* 803FE74C  93 DF 01 90 */	stw r30, 0x190(r31)
/* 803FE750  38 00 00 01 */	li r0, 1
/* 803FE754  3B C0 00 19 */	li r30, 0x19
/* 803FE758  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 803FE75C  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 803FE760  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FE764  2C 00 00 19 */	cmpwi r0, 0x19
/* 803FE768  90 7F 01 94 */	stw r3, 0x194(r31)
/* 803FE76C  40 82 00 3C */	bne lbl_803FE7A8
/* 803FE770  38 00 00 16 */	li r0, 0x16
/* 803FE774  90 1F 01 90 */	stw r0, 0x190(r31)
/* 803FE778  48 00 00 30 */	b lbl_803FE7A8
lbl_803FE77C:
/* 803FE77C  3B C0 00 00 */	li r30, 0
/* 803FE780  4B FF BD 4D */	bl mCD_ClearMemMgr_com2
/* 803FE784  48 00 00 24 */	b lbl_803FE7A8
lbl_803FE788:
/* 803FE788  2C 04 00 AA */	cmpwi r4, 0xaa
/* 803FE78C  41 80 00 1C */	blt lbl_803FE7A8
/* 803FE790  83 C3 01 90 */	lwz r30, 0x190(r3)
/* 803FE794  80 03 01 94 */	lwz r0, 0x194(r3)
/* 803FE798  90 1D 00 00 */	stw r0, 0(r29)
/* 803FE79C  4B FF BD 31 */	bl mCD_ClearMemMgr_com2
/* 803FE7A0  38 60 00 53 */	li r3, 0x53
/* 803FE7A4  48 22 F7 81 */	bl sAdo_SysLevStop
lbl_803FE7A8:
/* 803FE7A8  7F C3 F3 78 */	mr r3, r30
/* 803FE7AC  4B FF F7 19 */	bl mCD_EraseLand_ChangeErrCode
/* 803FE7B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE7B4  4B C9 C7 69 */	bl func_8009AF1C
/* 803FE7B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FE7BC  7C 08 03 A6 */	mtlr r0
/* 803FE7C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803FE7C4  4E 80 00 20 */	blr 
