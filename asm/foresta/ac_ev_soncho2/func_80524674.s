lbl_80524674:
/* 80524674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80524678  7C 08 02 A6 */	mflr r0
/* 8052467C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80524680  39 61 00 20 */	addi r11, r1, 0x20
/* 80524684  4B B7 68 4D */	bl func_8009AED0
/* 80524688  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052468C  7C 7F 1B 78 */	mr r31, r3
/* 80524690  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80524694  7C 9C 23 78 */	mr r28, r4
/* 80524698  3F A5 00 02 */	addis r29, r5, 2
/* 8052469C  80 BD 60 4C */	lwz r5, 0x604c(r29)
/* 805246A0  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 805246A4  7D 89 03 A6 */	mtctr r12
/* 805246A8  4E 80 04 21 */	bctrl 
/* 805246AC  2C 03 00 01 */	cmpwi r3, 1
/* 805246B0  40 82 00 BC */	bne lbl_8052476C
/* 805246B4  7F 83 E3 78 */	mr r3, r28
/* 805246B8  4B EB 4F 89 */	bl get_player_actor_withoutCheck
/* 805246BC  3C A0 80 52 */	lis r5, aES2_schedule_proc@ha /* 0x8052577C@ha */
/* 805246C0  7C 7E 1B 78 */	mr r30, r3
/* 805246C4  38 05 57 7C */	addi r0, r5, aES2_schedule_proc@l /* 0x8052577C@l */
/* 805246C8  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A0CAC@ha */
/* 805246CC  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 805246D0  38 A4 0C AC */	addi r5, r4, ct_data@l /* 0x806A0CAC@l */
/* 805246D4  7F E3 FB 78 */	mr r3, r31
/* 805246D8  7F 84 E3 78 */	mr r4, r28
/* 805246DC  80 DD 60 4C */	lwz r6, 0x604c(r29)
/* 805246E0  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 805246E4  7D 89 03 A6 */	mtctr r12
/* 805246E8  4E 80 04 21 */	bctrl 
/* 805246EC  38 00 FF FF */	li r0, -1
/* 805246F0  38 80 00 03 */	li r4, 3
/* 805246F4  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 805246F8  38 00 00 00 */	li r0, 0
/* 805246FC  7F E3 FB 78 */	mr r3, r31
/* 80524700  98 9F 07 51 */	stb r4, 0x751(r31)
/* 80524704  98 1F 09 AC */	stb r0, 0x9ac(r31)
/* 80524708  98 1F 09 AD */	stb r0, 0x9ad(r31)
/* 8052470C  80 9D 60 4C */	lwz r4, 0x604c(r29)
/* 80524710  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80524714  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 80524718  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8052471C  7D 89 03 A6 */	mtctr r12
/* 80524720  4E 80 04 21 */	bctrl 
/* 80524724  3C 60 80 65 */	lis r3, data_8064918C@ha /* 0x8064918C@ha */
/* 80524728  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052472C  38 A3 91 8C */	addi r5, r3, data_8064918C@l /* 0x8064918C@l */
/* 80524730  38 60 FF FF */	li r3, -1
/* 80524734  C0 05 00 00 */	lfs f0, 0(r5)
/* 80524738  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052473C  3C 84 00 02 */	addis r4, r4, 2
/* 80524740  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 80524744  A0 04 61 26 */	lhz r0, 0x6126(r4)
/* 80524748  B0 1F 09 98 */	sth r0, 0x998(r31)
/* 8052474C  88 04 61 25 */	lbz r0, 0x6125(r4)
/* 80524750  98 1F 09 9A */	stb r0, 0x99a(r31)
/* 80524754  88 04 61 23 */	lbz r0, 0x6123(r4)
/* 80524758  98 1F 09 9B */	stb r0, 0x99b(r31)
/* 8052475C  A0 9F 09 98 */	lhz r4, 0x998(r31)
/* 80524760  88 BF 09 9A */	lbz r5, 0x99a(r31)
/* 80524764  88 DF 09 9B */	lbz r6, 0x99b(r31)
/* 80524768  4B E5 8D 89 */	bl mCD_calendar_check_delete
lbl_8052476C:
/* 8052476C  39 61 00 20 */	addi r11, r1, 0x20
/* 80524770  4B B7 67 AD */	bl func_8009AF1C
/* 80524774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80524778  7C 08 03 A6 */	mtlr r0
/* 8052477C  38 21 00 20 */	addi r1, r1, 0x20
/* 80524780  4E 80 00 20 */	blr 
