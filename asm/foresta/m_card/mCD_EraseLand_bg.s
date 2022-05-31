lbl_803FE324:
/* 803FE324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FE328  7C 08 02 A6 */	mflr r0
/* 803FE32C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FE330  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE334  4B C9 CB 9D */	bl func_8009AED0
/* 803FE338  3C 80 81 19 */	lis r4, l_memMgr@ha /* 0x81197638@ha */
/* 803FE33C  7C 7D 1B 78 */	mr r29, r3
/* 803FE340  38 64 76 38 */	addi r3, r4, l_memMgr@l /* 0x81197638@l */
/* 803FE344  3B C0 00 19 */	li r30, 0x19
/* 803FE348  80 83 01 88 */	lwz r4, 0x188(r3)
/* 803FE34C  3B 83 00 14 */	addi r28, r3, 0x14
/* 803FE350  80 03 01 8C */	lwz r0, 0x18c(r3)
/* 803FE354  7C 7F 1B 78 */	mr r31, r3
/* 803FE358  38 84 00 01 */	addi r4, r4, 1
/* 803FE35C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 803FE360  2C 00 00 00 */	cmpwi r0, 0
/* 803FE364  90 83 01 88 */	stw r4, 0x188(r3)
/* 803FE368  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803FE36C  40 82 00 FC */	bne lbl_803FE468
/* 803FE370  28 00 00 07 */	cmplwi r0, 7
/* 803FE374  40 80 00 E8 */	bge lbl_803FE45C
/* 803FE378  3C 80 80 66 */	lis r4, erase_proc_3151@ha /* 0x8065E940@ha */
/* 803FE37C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803FE380  38 84 E9 40 */	addi r4, r4, erase_proc_3151@l /* 0x8065E940@l */
/* 803FE384  7D 84 00 2E */	lwzx r12, r4, r0
/* 803FE388  7F 84 E3 78 */	mr r4, r28
/* 803FE38C  7D 89 03 A6 */	mtctr r12
/* 803FE390  4E 80 04 21 */	bctrl 
/* 803FE394  2C 03 00 01 */	cmpwi r3, 1
/* 803FE398  40 82 00 20 */	bne lbl_803FE3B8
/* 803FE39C  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FE3A0  2C 00 00 07 */	cmpwi r0, 7
/* 803FE3A4  40 82 00 4C */	bne lbl_803FE3F0
/* 803FE3A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FE3AC  3B C0 00 00 */	li r30, 0
/* 803FE3B0  90 1D 00 00 */	stw r0, 0(r29)
/* 803FE3B4  48 00 00 3C */	b lbl_803FE3F0
lbl_803FE3B8:
/* 803FE3B8  2C 03 00 00 */	cmpwi r3, 0
/* 803FE3BC  41 82 00 34 */	beq lbl_803FE3F0
/* 803FE3C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FE3C4  2C 00 00 00 */	cmpwi r0, 0
/* 803FE3C8  41 82 00 0C */	beq lbl_803FE3D4
/* 803FE3CC  2C 00 00 01 */	cmpwi r0, 1
/* 803FE3D0  40 82 00 1C */	bne lbl_803FE3EC
lbl_803FE3D4:
/* 803FE3D4  90 1D 00 00 */	stw r0, 0(r29)
/* 803FE3D8  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FE3DC  1C 80 00 94 */	mulli r4, r0, 0x94
/* 803FE3E0  38 04 00 CC */	addi r0, r4, 0xcc
/* 803FE3E4  7F DF 00 2E */	lwzx r30, r31, r0
/* 803FE3E8  48 00 00 08 */	b lbl_803FE3F0
lbl_803FE3EC:
/* 803FE3EC  3B C0 00 16 */	li r30, 0x16
lbl_803FE3F0:
/* 803FE3F0  2C 03 FF FF */	cmpwi r3, -1
/* 803FE3F4  41 82 00 18 */	beq lbl_803FE40C
/* 803FE3F8  2C 03 00 01 */	cmpwi r3, 1
/* 803FE3FC  40 82 00 8C */	bne lbl_803FE488
/* 803FE400  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FE404  2C 00 00 07 */	cmpwi r0, 7
/* 803FE408  40 82 00 80 */	bne lbl_803FE488
lbl_803FE40C:
/* 803FE40C  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 803FE410  2C 00 00 AA */	cmpwi r0, 0xaa
/* 803FE414  41 80 00 18 */	blt lbl_803FE42C
/* 803FE418  38 60 00 53 */	li r3, 0x53
/* 803FE41C  48 22 FB 09 */	bl sAdo_SysLevStop
/* 803FE420  7F E3 FB 78 */	mr r3, r31
/* 803FE424  4B FF C0 A9 */	bl mCD_ClearMemMgr_com2
/* 803FE428  48 00 00 60 */	b lbl_803FE488
lbl_803FE42C:
/* 803FE42C  93 DF 01 90 */	stw r30, 0x190(r31)
/* 803FE430  38 00 00 01 */	li r0, 1
/* 803FE434  3B C0 00 19 */	li r30, 0x19
/* 803FE438  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 803FE43C  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 803FE440  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FE444  2C 00 00 19 */	cmpwi r0, 0x19
/* 803FE448  90 7F 01 94 */	stw r3, 0x194(r31)
/* 803FE44C  40 82 00 3C */	bne lbl_803FE488
/* 803FE450  38 00 00 16 */	li r0, 0x16
/* 803FE454  90 1F 01 90 */	stw r0, 0x190(r31)
/* 803FE458  48 00 00 30 */	b lbl_803FE488
lbl_803FE45C:
/* 803FE45C  3B C0 00 00 */	li r30, 0
/* 803FE460  4B FF C0 6D */	bl mCD_ClearMemMgr_com2
/* 803FE464  48 00 00 24 */	b lbl_803FE488
lbl_803FE468:
/* 803FE468  2C 04 00 AA */	cmpwi r4, 0xaa
/* 803FE46C  41 80 00 1C */	blt lbl_803FE488
/* 803FE470  83 C3 01 90 */	lwz r30, 0x190(r3)
/* 803FE474  80 03 01 94 */	lwz r0, 0x194(r3)
/* 803FE478  90 1D 00 00 */	stw r0, 0(r29)
/* 803FE47C  4B FF C0 51 */	bl mCD_ClearMemMgr_com2
/* 803FE480  38 60 00 53 */	li r3, 0x53
/* 803FE484  48 22 FA A1 */	bl sAdo_SysLevStop
lbl_803FE488:
/* 803FE488  7F C3 F3 78 */	mr r3, r30
/* 803FE48C  4B FF FA 39 */	bl mCD_EraseLand_ChangeErrCode
/* 803FE490  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE494  4B C9 CA 89 */	bl func_8009AF1C
/* 803FE498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FE49C  7C 08 03 A6 */	mtlr r0
/* 803FE4A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803FE4A4  4E 80 00 20 */	blr 
