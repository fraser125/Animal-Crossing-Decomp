lbl_80593878:
/* 80593878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059387C  7C 08 02 A6 */	mflr r0
/* 80593880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80593884  39 61 00 20 */	addi r11, r1, 0x20
/* 80593888  4B B0 76 4D */	bl func_8009AED4
/* 8059388C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80593890  7C 7D 1B 78 */	mr r29, r3
/* 80593894  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80593898  7C 9E 23 78 */	mr r30, r4
/* 8059389C  3F E5 00 02 */	addis r31, r5, 2
/* 805938A0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805938A4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 805938A8  7D 89 03 A6 */	mtctr r12
/* 805938AC  4E 80 04 21 */	bctrl 
/* 805938B0  2C 03 00 01 */	cmpwi r3, 1
/* 805938B4  40 82 00 64 */	bne lbl_80593918
/* 805938B8  3C 60 80 59 */	lis r3, aETKY_schedule_proc@ha /* 0x80593770@ha */
/* 805938BC  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C2B20@ha */
/* 805938C0  38 03 37 70 */	addi r0, r3, aETKY_schedule_proc@l /* 0x80593770@l */
/* 805938C4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 805938C8  38 A4 2B 20 */	addi r5, r4, ct_data@l /* 0x806C2B20@l */
/* 805938CC  7F A3 EB 78 */	mr r3, r29
/* 805938D0  7F C4 F3 78 */	mr r4, r30
/* 805938D4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 805938D8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 805938DC  7D 89 03 A6 */	mtctr r12
/* 805938E0  4E 80 04 21 */	bctrl 
/* 805938E4  3C 80 80 59 */	lis r4, aETKY_SetupTalkStat@ha /* 0x80593D84@ha */
/* 805938E8  7F A3 EB 78 */	mr r3, r29
/* 805938EC  38 04 3D 84 */	addi r0, r4, aETKY_SetupTalkStat@l /* 0x80593D84@l */
/* 805938F0  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 805938F4  4B FF FE B1 */	bl aETKY_SetupSaveData
/* 805938F8  7F A3 EB 78 */	mr r3, r29
/* 805938FC  4B FF FF 19 */	bl aETKY_SetupCommonData
/* 80593900  80 7D 09 A8 */	lwz r3, 0x9a8(r29)
/* 80593904  38 63 00 14 */	addi r3, r3, 0x14
/* 80593908  4B FF F7 69 */	bl func_80593070
/* 8059390C  98 7D 09 B0 */	stb r3, 0x9b0(r29)
/* 80593910  38 00 00 FE */	li r0, 0xfe
/* 80593914  98 1D 00 D6 */	stb r0, 0xd6(r29)
lbl_80593918:
/* 80593918  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8059391C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80593920  90 7D 09 C0 */	stw r3, 0x9c0(r29)
/* 80593924  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 80593928  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8059392C  90 1D 09 C8 */	stw r0, 0x9c8(r29)
/* 80593930  39 61 00 20 */	addi r11, r1, 0x20
/* 80593934  4B B0 75 ED */	bl func_8009AF20
/* 80593938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059393C  7C 08 03 A6 */	mtlr r0
/* 80593940  38 21 00 20 */	addi r1, r1, 0x20
/* 80593944  4E 80 00 20 */	blr 
