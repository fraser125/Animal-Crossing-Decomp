lbl_80574A68:
/* 80574A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574A6C  7C 08 02 A6 */	mflr r0
/* 80574A70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80574A74  38 80 00 01 */	li r4, 1
/* 80574A78  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80574A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574A80  3C 63 00 02 */	addis r3, r3, 2
/* 80574A84  A0 03 3E 10 */	lhz r0, 0x3e10(r3)
/* 80574A88  28 00 00 00 */	cmplwi r0, 0
/* 80574A8C  40 82 00 18 */	bne lbl_80574AA4
/* 80574A90  7C 64 1B 78 */	mr r4, r3
/* 80574A94  38 63 3E 0A */	addi r3, r3, 0x3e0a
/* 80574A98  38 84 61 20 */	addi r4, r4, 0x6120
/* 80574A9C  4B E9 27 99 */	bl lbRTC_TimeCopy
/* 80574AA0  38 80 00 00 */	li r4, 0
lbl_80574AA4:
/* 80574AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574AA8  7C 83 23 78 */	mr r3, r4
/* 80574AAC  7C 08 03 A6 */	mtlr r0
/* 80574AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80574AB4  4E 80 00 20 */	blr 