lbl_805877F0:
/* 805877F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805877F4  7C 08 02 A6 */	mflr r0
/* 805877F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805877FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80587800  4B B1 36 D5 */	bl func_8009AED4
/* 80587804  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80587808  7C 7D 1B 78 */	mr r29, r3
/* 8058780C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80587810  7C 9E 23 78 */	mr r30, r4
/* 80587814  3F E5 00 02 */	addis r31, r5, 2
/* 80587818  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8058781C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80587820  7D 89 03 A6 */	mtctr r12
/* 80587824  4E 80 04 21 */	bctrl 
/* 80587828  2C 03 00 01 */	cmpwi r3, 1
/* 8058782C  40 82 00 30 */	bne lbl_8058785C
/* 80587830  3C 60 80 59 */	lis r3, aPST_schedule_proc@ha /* 0x80588498@ha */
/* 80587834  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C1CC4@ha */
/* 80587838  38 03 84 98 */	addi r0, r3, aPST_schedule_proc@l /* 0x80588498@l */
/* 8058783C  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 80587840  38 A4 1C C4 */	addi r5, r4, ct_data@l /* 0x806C1CC4@l */
/* 80587844  7F A3 EB 78 */	mr r3, r29
/* 80587848  7F C4 F3 78 */	mr r4, r30
/* 8058784C  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80587850  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80587854  7D 89 03 A6 */	mtctr r12
/* 80587858  4E 80 04 21 */	bctrl 
lbl_8058785C:
/* 8058785C  39 61 00 20 */	addi r11, r1, 0x20
/* 80587860  4B B1 36 C1 */	bl func_8009AF20
/* 80587864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80587868  7C 08 03 A6 */	mtlr r0
/* 8058786C  38 21 00 20 */	addi r1, r1, 0x20
/* 80587870  4E 80 00 20 */	blr 
