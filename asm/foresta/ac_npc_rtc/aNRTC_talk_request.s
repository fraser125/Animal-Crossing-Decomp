lbl_80573E10:
/* 80573E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573E14  7C 08 02 A6 */	mflr r0
/* 80573E18  3C A0 80 57 */	lis r5, aNRTC_set_talk_info_talk_request@ha /* 0x80573D64@ha */
/* 80573E1C  7C 64 1B 78 */	mr r4, r3
/* 80573E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573E24  38 A5 3D 64 */	addi r5, r5, aNRTC_set_talk_info_talk_request@l /* 0x80573D64@l */
/* 80573E28  38 60 00 08 */	li r3, 8
/* 80573E2C  4B E2 63 31 */	bl mDemo_Request
/* 80573E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573E34  7C 08 03 A6 */	mtlr r0
/* 80573E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80573E3C  4E 80 00 20 */	blr 
