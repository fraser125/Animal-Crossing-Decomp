lbl_805257BC:
/* 805257BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805257C0  7C 08 02 A6 */	mflr r0
/* 805257C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805257C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805257CC  4B B7 57 09 */	bl func_8009AED4
/* 805257D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805257D4  7C 7D 1B 78 */	mr r29, r3
/* 805257D8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805257DC  7C 9E 23 78 */	mr r30, r4
/* 805257E0  3F E5 00 02 */	addis r31, r5, 2
/* 805257E4  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805257E8  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 805257EC  7D 89 03 A6 */	mtctr r12
/* 805257F0  4E 80 04 21 */	bctrl 
/* 805257F4  2C 03 00 01 */	cmpwi r3, 1
/* 805257F8  40 82 00 4C */	bne lbl_80525844
/* 805257FC  3C 60 80 52 */	lis r3, aESS_schedule_proc@ha /* 0x80525D74@ha */
/* 80525800  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A0D9C@ha */
/* 80525804  38 03 5D 74 */	addi r0, r3, aESS_schedule_proc@l /* 0x80525D74@l */
/* 80525808  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8052580C  38 A4 0D 9C */	addi r5, r4, ct_data@l /* 0x806A0D9C@l */
/* 80525810  7F A3 EB 78 */	mr r3, r29
/* 80525814  7F C4 F3 78 */	mr r4, r30
/* 80525818  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8052581C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80525820  7D 89 03 A6 */	mtctr r12
/* 80525824  4E 80 04 21 */	bctrl 
/* 80525828  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8052582C  7F A3 EB 78 */	mr r3, r29
/* 80525830  38 80 00 05 */	li r4, 5
/* 80525834  38 A0 00 00 */	li r5, 0
/* 80525838  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8052583C  7D 89 03 A6 */	mtctr r12
/* 80525840  4E 80 04 21 */	bctrl 
lbl_80525844:
/* 80525844  39 61 00 20 */	addi r11, r1, 0x20
/* 80525848  4B B7 56 D9 */	bl func_8009AF20
/* 8052584C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80525850  7C 08 03 A6 */	mtlr r0
/* 80525854  38 21 00 20 */	addi r1, r1, 0x20
/* 80525858  4E 80 00 20 */	blr 
