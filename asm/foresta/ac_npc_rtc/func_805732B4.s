lbl_805732B4:
/* 805732B4  80 83 09 B8 */	lwz r4, 0x9b8(r3)
/* 805732B8  2C 04 00 00 */	cmpwi r4, 0
/* 805732BC  40 81 00 10 */	ble lbl_805732CC
/* 805732C0  38 04 FF FF */	addi r0, r4, -1
/* 805732C4  90 03 09 B8 */	stw r0, 0x9b8(r3)
/* 805732C8  4E 80 00 20 */	blr 
lbl_805732CC:
/* 805732CC  38 00 00 01 */	li r0, 1
/* 805732D0  3C 80 80 57 */	lis r4, aNRTC_talk_request@ha /* 0x80573E10@ha */
/* 805732D4  90 03 09 A0 */	stw r0, 0x9a0(r3)
/* 805732D8  38 84 3E 10 */	addi r4, r4, aNRTC_talk_request@l /* 0x80573E10@l */
/* 805732DC  38 00 01 00 */	li r0, 0x100
/* 805732E0  90 83 09 64 */	stw r4, 0x964(r3)
/* 805732E4  90 03 08 40 */	stw r0, 0x840(r3)
/* 805732E8  4E 80 00 20 */	blr 
