lbl_8057F044:
/* 8057F044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057F048  7C 08 02 A6 */	mflr r0
/* 8057F04C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057F050  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F054  4B B1 BE 81 */	bl func_8009AED4
/* 8057F058  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057F05C  7C 7D 1B 78 */	mr r29, r3
/* 8057F060  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057F064  7C 9E 23 78 */	mr r30, r4
/* 8057F068  3F E5 00 02 */	addis r31, r5, 2
/* 8057F06C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8057F070  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8057F074  7D 89 03 A6 */	mtctr r12
/* 8057F078  4E 80 04 21 */	bctrl 
/* 8057F07C  2C 03 00 01 */	cmpwi r3, 1
/* 8057F080  40 82 00 48 */	bne lbl_8057F0C8
/* 8057F084  3C 60 80 58 */	lis r3, aSTM_schedule_proc@ha /* 0x80580528@ha */
/* 8057F088  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C0AB4@ha */
/* 8057F08C  38 03 05 28 */	addi r0, r3, aSTM_schedule_proc@l /* 0x80580528@l */
/* 8057F090  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8057F094  38 A4 0A B4 */	addi r5, r4, ct_data@l /* 0x806C0AB4@l */
/* 8057F098  7F A3 EB 78 */	mr r3, r29
/* 8057F09C  7F C4 F3 78 */	mr r4, r30
/* 8057F0A0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8057F0A4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8057F0A8  7D 89 03 A6 */	mtctr r12
/* 8057F0AC  4E 80 04 21 */	bctrl 
/* 8057F0B0  38 60 00 00 */	li r3, 0
/* 8057F0B4  38 00 FF FF */	li r0, -1
/* 8057F0B8  98 7D 09 A5 */	stb r3, 0x9a5(r29)
/* 8057F0BC  98 7D 09 A6 */	stb r3, 0x9a6(r29)
/* 8057F0C0  98 7D 09 A3 */	stb r3, 0x9a3(r29)
/* 8057F0C4  90 1D 08 F4 */	stw r0, 0x8f4(r29)
lbl_8057F0C8:
/* 8057F0C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F0CC  4B B1 BE 55 */	bl func_8009AF20
/* 8057F0D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057F0D4  7C 08 03 A6 */	mtlr r0
/* 8057F0D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057F0DC  4E 80 00 20 */	blr 
