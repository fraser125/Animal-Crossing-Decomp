lbl_803FD60C:
/* 803FD60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FD610  7C 08 02 A6 */	mflr r0
/* 803FD614  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FD618  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD61C  4B C9 D8 B1 */	bl func_8009AECC
/* 803FD620  3C A0 81 19 */	lis r5, l_memMgr@ha /* 0x81197638@ha */
/* 803FD624  7C 9B 23 78 */	mr r27, r4
/* 803FD628  38 C5 76 38 */	addi r6, r5, l_memMgr@l /* 0x81197638@l */
/* 803FD62C  3B 80 00 19 */	li r28, 0x19
/* 803FD630  80 86 01 88 */	lwz r4, 0x188(r6)
/* 803FD634  3B A6 00 14 */	addi r29, r6, 0x14
/* 803FD638  80 06 01 8C */	lwz r0, 0x18c(r6)
/* 803FD63C  7C DE 33 78 */	mr r30, r6
/* 803FD640  38 84 00 01 */	addi r4, r4, 1
/* 803FD644  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 803FD648  2C 00 00 00 */	cmpwi r0, 0
/* 803FD64C  90 86 01 88 */	stw r4, 0x188(r6)
/* 803FD650  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803FD654  40 82 01 6C */	bne lbl_803FD7C0
/* 803FD658  28 00 00 12 */	cmplwi r0, 0x12
/* 803FD65C  40 80 01 54 */	bge lbl_803FD7B0
/* 803FD660  3C 80 80 66 */	lis r4, save_proc_2857@ha /* 0x8065E840@ha */
/* 803FD664  90 7D 00 04 */	stw r3, 4(r29)
/* 803FD668  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803FD66C  7C C3 33 78 */	mr r3, r6
/* 803FD670  38 A4 E8 40 */	addi r5, r4, save_proc_2857@l /* 0x8065E840@l */
/* 803FD674  7F A4 EB 78 */	mr r4, r29
/* 803FD678  7D 85 00 2E */	lwzx r12, r5, r0
/* 803FD67C  7D 89 03 A6 */	mtctr r12
/* 803FD680  4E 80 04 21 */	bctrl 
/* 803FD684  7C 7F 1B 78 */	mr r31, r3
/* 803FD688  2C 1F 00 01 */	cmpwi r31, 1
/* 803FD68C  40 82 00 2C */	bne lbl_803FD6B8
/* 803FD690  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FD694  2C 00 00 12 */	cmpwi r0, 0x12
/* 803FD698  40 82 00 9C */	bne lbl_803FD734
/* 803FD69C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FD6A0  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FD6A4  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FD6A8  3B 80 00 00 */	li r28, 0
/* 803FD6AC  90 1B 00 00 */	stw r0, 0(r27)
/* 803FD6B0  4B FF D0 09 */	bl mCD_ClearNoLandProtectCode
/* 803FD6B4  48 00 00 80 */	b lbl_803FD734
lbl_803FD6B8:
/* 803FD6B8  2C 1F 00 00 */	cmpwi r31, 0
/* 803FD6BC  41 82 00 78 */	beq lbl_803FD734
/* 803FD6C0  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FD6C4  2C 00 00 00 */	cmpwi r0, 0
/* 803FD6C8  41 82 00 0C */	beq lbl_803FD6D4
/* 803FD6CC  2C 00 00 01 */	cmpwi r0, 1
/* 803FD6D0  40 82 00 1C */	bne lbl_803FD6EC
lbl_803FD6D4:
/* 803FD6D4  90 1B 00 00 */	stw r0, 0(r27)
/* 803FD6D8  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FD6DC  1C 60 00 94 */	mulli r3, r0, 0x94
/* 803FD6E0  38 03 00 CC */	addi r0, r3, 0xcc
/* 803FD6E4  7F 9E 00 2E */	lwzx r28, r30, r0
/* 803FD6E8  48 00 00 08 */	b lbl_803FD6F0
lbl_803FD6EC:
/* 803FD6EC  3B 80 00 16 */	li r28, 0x16
lbl_803FD6F0:
/* 803FD6F0  80 1E 01 80 */	lwz r0, 0x180(r30)
/* 803FD6F4  2C 00 FF FF */	cmpwi r0, -1
/* 803FD6F8  41 82 00 14 */	beq lbl_803FD70C
/* 803FD6FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FD700  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FD704  3C 63 00 02 */	addis r3, r3, 2
/* 803FD708  98 03 0F 1A */	stb r0, 0xf1a(r3)
lbl_803FD70C:
/* 803FD70C  80 9E 01 84 */	lwz r4, 0x184(r30)
/* 803FD710  2C 04 FF FF */	cmpwi r4, -1
/* 803FD714  41 82 00 20 */	beq lbl_803FD734
/* 803FD718  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FD71C  2C 00 00 0C */	cmpwi r0, 0xc
/* 803FD720  40 80 00 14 */	bge lbl_803FD734
/* 803FD724  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FD728  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FD72C  3C 63 00 03 */	addis r3, r3, 3
/* 803FD730  B0 83 85 96 */	sth r4, -0x7a6a(r3)
lbl_803FD734:
/* 803FD734  2C 1F FF FF */	cmpwi r31, -1
/* 803FD738  41 82 00 18 */	beq lbl_803FD750
/* 803FD73C  2C 1F 00 01 */	cmpwi r31, 1
/* 803FD740  40 82 00 B4 */	bne lbl_803FD7F4
/* 803FD744  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FD748  2C 00 00 12 */	cmpwi r0, 0x12
/* 803FD74C  40 82 00 A8 */	bne lbl_803FD7F4
lbl_803FD750:
/* 803FD750  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 803FD754  2C 00 00 70 */	cmpwi r0, 0x70
/* 803FD758  41 80 00 28 */	blt lbl_803FD780
/* 803FD75C  2C 1F 00 01 */	cmpwi r31, 1
/* 803FD760  40 82 00 0C */	bne lbl_803FD76C
/* 803FD764  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FD768  4B FF FE 4D */	bl mCD_create_famicom_file
lbl_803FD76C:
/* 803FD76C  38 60 00 47 */	li r3, 0x47
/* 803FD770  48 23 07 B5 */	bl sAdo_SysLevStop
/* 803FD774  7F C3 F3 78 */	mr r3, r30
/* 803FD778  4B FF CD 55 */	bl mCD_ClearMemMgr_com2
/* 803FD77C  48 00 00 78 */	b lbl_803FD7F4
lbl_803FD780:
/* 803FD780  93 9E 01 90 */	stw r28, 0x190(r30)
/* 803FD784  38 00 00 01 */	li r0, 1
/* 803FD788  3B 80 00 19 */	li r28, 0x19
/* 803FD78C  90 1E 01 8C */	stw r0, 0x18c(r30)
/* 803FD790  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 803FD794  80 7B 00 00 */	lwz r3, 0(r27)
/* 803FD798  2C 00 00 19 */	cmpwi r0, 0x19
/* 803FD79C  90 7E 01 94 */	stw r3, 0x194(r30)
/* 803FD7A0  40 82 00 54 */	bne lbl_803FD7F4
/* 803FD7A4  38 00 00 16 */	li r0, 0x16
/* 803FD7A8  90 1E 01 90 */	stw r0, 0x190(r30)
/* 803FD7AC  48 00 00 48 */	b lbl_803FD7F4
lbl_803FD7B0:
/* 803FD7B0  7C C3 33 78 */	mr r3, r6
/* 803FD7B4  3B 80 00 00 */	li r28, 0
/* 803FD7B8  4B FF CD 15 */	bl mCD_ClearMemMgr_com2
/* 803FD7BC  48 00 00 38 */	b lbl_803FD7F4
lbl_803FD7C0:
/* 803FD7C0  2C 04 00 70 */	cmpwi r4, 0x70
/* 803FD7C4  41 80 00 30 */	blt lbl_803FD7F4
/* 803FD7C8  83 86 01 90 */	lwz r28, 0x190(r6)
/* 803FD7CC  7C C3 33 78 */	mr r3, r6
/* 803FD7D0  80 06 01 94 */	lwz r0, 0x194(r6)
/* 803FD7D4  90 1B 00 00 */	stw r0, 0(r27)
/* 803FD7D8  4B FF CC F5 */	bl mCD_ClearMemMgr_com2
/* 803FD7DC  2C 1C 00 00 */	cmpwi r28, 0
/* 803FD7E0  40 82 00 0C */	bne lbl_803FD7EC
/* 803FD7E4  80 7B 00 00 */	lwz r3, 0(r27)
/* 803FD7E8  4B FF FD CD */	bl mCD_create_famicom_file
lbl_803FD7EC:
/* 803FD7EC  38 60 00 47 */	li r3, 0x47
/* 803FD7F0  48 23 07 35 */	bl sAdo_SysLevStop
lbl_803FD7F4:
/* 803FD7F4  7F 83 E3 78 */	mr r3, r28
/* 803FD7F8  4B FF FD 81 */	bl mCD_SaveHome_ChangeErrCode
/* 803FD7FC  2C 03 00 19 */	cmpwi r3, 0x19
/* 803FD800  41 82 00 10 */	beq lbl_803FD810
/* 803FD804  3C 80 81 1C */	lis r4, SoftResetEnable@ha /* 0x811C5324@ha */
/* 803FD808  38 00 00 01 */	li r0, 1
/* 803FD80C  98 04 53 24 */	stb r0, SoftResetEnable@l(r4)  /* 0x811C5324@l */
lbl_803FD810:
/* 803FD810  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD814  4B C9 D7 05 */	bl func_8009AF18
/* 803FD818  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FD81C  7C 08 03 A6 */	mtlr r0
/* 803FD820  38 21 00 20 */	addi r1, r1, 0x20
/* 803FD824  4E 80 00 20 */	blr 
