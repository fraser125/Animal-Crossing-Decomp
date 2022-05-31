lbl_805B5A84:
/* 805B5A84  80 E3 02 B8 */	lwz r7, 0x2b8(r3)
/* 805B5A88  3C C0 81 20 */	lis r6, aMHS_door_closed_flag@ha /* 0x811FA1E8@ha */
/* 805B5A8C  3C A0 80 6C */	lis r5, process@ha /* 0x806C5FAC@ha */
/* 805B5A90  54 80 10 3A */	slwi r0, r4, 2
/* 805B5A94  38 85 5F AC */	addi r4, r5, process@l /* 0x806C5FAC@l */
/* 805B5A98  54 E7 10 3A */	slwi r7, r7, 2
/* 805B5A9C  38 A6 A1 E8 */	addi r5, r6, aMHS_door_closed_flag@l /* 0x811FA1E8@l */
/* 805B5AA0  38 C0 00 01 */	li r6, 1
/* 805B5AA4  7C C5 39 2E */	stwx r6, r5, r7
/* 805B5AA8  7C 04 00 2E */	lwzx r0, r4, r0
/* 805B5AAC  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805B5AB0  4E 80 00 20 */	blr 
