lbl_805864B4:
/* 805864B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805864B8  7C 08 02 A6 */	mflr r0
/* 805864BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805864C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805864C4  4B B1 4A 11 */	bl func_8009AED4
/* 805864C8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805864CC  7C 7D 1B 78 */	mr r29, r3
/* 805864D0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805864D4  7C 9E 23 78 */	mr r30, r4
/* 805864D8  3C 83 00 02 */	addis r4, r3, 2
/* 805864DC  38 60 00 47 */	li r3, 0x47
/* 805864E0  8B E4 60 03 */	lbz r31, 0x6003(r4)
/* 805864E4  38 80 00 10 */	li r4, 0x10
/* 805864E8  4B E1 7B F5 */	bl mEv_get_common_area
/* 805864EC  28 1F 00 04 */	cmplwi r31, 4
/* 805864F0  40 82 00 14 */	bne lbl_80586504
/* 805864F4  A0 63 00 00 */	lhz r3, 0(r3)
/* 805864F8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 805864FC  7C 63 00 38 */	and r3, r3, r0
/* 80586500  48 00 00 14 */	b lbl_80586514
lbl_80586504:
/* 80586504  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80586508  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8058650C  7C 00 F8 30 */	slw r0, r0, r31
/* 80586510  7C 63 00 38 */	and r3, r3, r0
lbl_80586514:
/* 80586514  39 61 00 20 */	addi r11, r1, 0x20
/* 80586518  4B B1 4A 09 */	bl func_8009AF20
/* 8058651C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80586520  7C 08 03 A6 */	mtlr r0
/* 80586524  38 21 00 20 */	addi r1, r1, 0x20
/* 80586528  4E 80 00 20 */	blr 
