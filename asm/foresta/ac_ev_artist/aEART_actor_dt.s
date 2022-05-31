lbl_80519398:
/* 80519398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051939C  7C 08 02 A6 */	mflr r0
/* 805193A0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805193A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805193A8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805193AC  3C A5 00 02 */	addis r5, r5, 2
/* 805193B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805193B4  7C 7F 1B 78 */	mr r31, r3
/* 805193B8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805193BC  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 805193C0  7D 89 03 A6 */	mtctr r12
/* 805193C4  4E 80 04 21 */	bctrl 
/* 805193C8  7F E4 FB 78 */	mr r4, r31
/* 805193CC  38 60 00 4A */	li r3, 0x4a
/* 805193D0  4B E8 51 65 */	bl mEv_actor_dying_message
/* 805193D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805193D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805193DC  3C 63 00 02 */	addis r3, r3, 2
/* 805193E0  80 03 04 CC */	lwz r0, 0x4cc(r3)
/* 805193E4  2C 00 00 02 */	cmpwi r0, 2
/* 805193E8  40 81 00 0C */	ble lbl_805193F4
/* 805193EC  38 60 00 4A */	li r3, 0x4a
/* 805193F0  4B E8 5A AD */	bl mEv_special_event_soldout
lbl_805193F4:
/* 805193F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805193F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805193FC  7C 08 03 A6 */	mtlr r0
/* 80519400  38 21 00 10 */	addi r1, r1, 0x10
/* 80519404  4E 80 00 20 */	blr 
