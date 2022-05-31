lbl_8058DA84:
/* 8058DA84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058DA88  7C 08 02 A6 */	mflr r0
/* 8058DA8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058DA90  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DA94  4B B0 D4 41 */	bl func_8009AED4
/* 8058DA98  3C A0 80 59 */	lis r5, aTM0_think_proc@ha /* 0x8058DA50@ha */
/* 8058DA9C  3D 00 80 6C */	lis r8, data_806C23C8@ha /* 0x806C23C8@ha */
/* 8058DAA0  7C 7F 1B 78 */	mr r31, r3
/* 8058DAA4  38 00 01 37 */	li r0, 0x137
/* 8058DAA8  38 65 DA 50 */	addi r3, r5, aTM0_think_proc@l /* 0x8058DA50@l */
/* 8058DAAC  38 E0 00 01 */	li r7, 1
/* 8058DAB0  90 7F 07 D4 */	stw r3, 0x7d4(r31)
/* 8058DAB4  38 C0 00 00 */	li r6, 0
/* 8058DAB8  38 A0 FF FF */	li r5, -1
/* 8058DABC  38 60 00 4D */	li r3, 0x4d
/* 8058DAC0  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8058DAC4  38 00 00 FE */	li r0, 0xfe
/* 8058DAC8  7C 9D 23 78 */	mr r29, r4
/* 8058DACC  3B C8 23 C8 */	addi r30, r8, data_806C23C8@l /* 0x806C23C8@l */
/* 8058DAD0  98 FF 09 59 */	stb r7, 0x959(r31)
/* 8058DAD4  98 DF 08 31 */	stb r6, 0x831(r31)
/* 8058DAD8  90 BF 08 F4 */	stw r5, 0x8f4(r31)
/* 8058DADC  98 FF 09 73 */	stb r7, 0x973(r31)
/* 8058DAE0  B0 7F 09 74 */	sth r3, 0x974(r31)
/* 8058DAE4  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8058DAE8  4B E1 87 C1 */	bl mFI_GetPuleIdx
/* 8058DAEC  54 60 08 3C */	slwi r0, r3, 1
/* 8058DAF0  38 9E 00 54 */	addi r4, r30, 0x54
/* 8058DAF4  7C C4 02 AE */	lhax r6, r4, r0
/* 8058DAF8  54 60 10 3A */	slwi r0, r3, 2
/* 8058DAFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058DB00  39 3E 00 64 */	addi r9, r30, 0x64
/* 8058DB04  B0 DF 00 DE */	sth r6, 0xde(r31)
/* 8058DB08  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8058DB0C  39 1E 00 80 */	addi r8, r30, 0x80
/* 8058DB10  7F E3 FB 78 */	mr r3, r31
/* 8058DB14  B0 DF 00 36 */	sth r6, 0x36(r31)
/* 8058DB18  3C E4 00 02 */	addis r7, r4, 2
/* 8058DB1C  7F A4 EB 78 */	mr r4, r29
/* 8058DB20  38 A0 00 09 */	li r5, 9
/* 8058DB24  B0 DF 09 24 */	sth r6, 0x924(r31)
/* 8058DB28  38 C0 00 00 */	li r6, 0
/* 8058DB2C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8058DB30  7C 09 04 2E */	lfsx f0, r9, r0
/* 8058DB34  EC 01 00 2A */	fadds f0, f1, f0
/* 8058DB38  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8058DB3C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8058DB40  7C 08 04 2E */	lfsx f0, r8, r0
/* 8058DB44  EC 01 00 2A */	fadds f0, f1, f0
/* 8058DB48  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8058DB4C  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8058DB50  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058DB54  7D 89 03 A6 */	mtctr r12
/* 8058DB58  4E 80 04 21 */	bctrl 
/* 8058DB5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DB60  4B B0 D3 C1 */	bl func_8009AF20
/* 8058DB64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058DB68  7C 08 03 A6 */	mtlr r0
/* 8058DB6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058DB70  4E 80 00 20 */	blr 
