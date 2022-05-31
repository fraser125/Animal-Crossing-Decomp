lbl_80591D70:
/* 80591D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591D74  7C 08 02 A6 */	mflr r0
/* 80591D78  3C A0 80 6C */	lis r5, process@ha /* 0x806C29A0@ha */
/* 80591D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591D80  38 00 00 00 */	li r0, 0
/* 80591D84  38 A5 29 A0 */	addi r5, r5, process@l /* 0x806C29A0@l */
/* 80591D88  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80591D8C  54 80 10 3A */	slwi r0, r4, 2
/* 80591D90  90 83 09 94 */	stw r4, 0x994(r3)
/* 80591D94  7C 05 00 2E */	lwzx r0, r5, r0
/* 80591D98  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80591D9C  4B FF FE 71 */	bl aHT1_set_animation
/* 80591DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591DA4  7C 08 03 A6 */	mtlr r0
/* 80591DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80591DAC  4E 80 00 20 */	blr 
