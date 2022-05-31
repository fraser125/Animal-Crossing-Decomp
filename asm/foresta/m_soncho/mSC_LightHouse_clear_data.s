lbl_803ED9A4:
/* 803ED9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED9A8  7C 08 02 A6 */	mflr r0
/* 803ED9AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED9B0  38 80 00 08 */	li r4, 8
/* 803ED9B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED9BC  3C 63 00 02 */	addis r3, r3, 2
/* 803ED9C0  38 A0 00 00 */	li r5, 0
/* 803ED9C4  38 63 41 6C */	addi r3, r3, 0x416c
/* 803ED9C8  4B FC D0 81 */	bl mem_clear
/* 803ED9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED9D0  7C 08 03 A6 */	mtlr r0
/* 803ED9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED9D8  4E 80 00 20 */	blr 
