lbl_804DAC8C:
/* 804DAC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAC90  7C 08 02 A6 */	mflr r0
/* 804DAC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAC9C  7C 9F 23 78 */	mr r31, r4
/* 804DACA0  38 80 00 00 */	li r4, 0
/* 804DACA4  93 C1 00 08 */	stw r30, 8(r1)
/* 804DACA8  7C 7E 1B 78 */	mr r30, r3
/* 804DACAC  7F E3 FB 78 */	mr r3, r31
/* 804DACB0  4B EA 3E 15 */	bl Camera2_change_priority
/* 804DACB4  7F E3 FB 78 */	mr r3, r31
/* 804DACB8  38 9E 00 48 */	addi r4, r30, 0x48
/* 804DACBC  38 A0 00 05 */	li r5, 5
/* 804DACC0  4B EA 6C FD */	bl Camera2_request_main_simple_fishing_return
/* 804DACC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DACC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DACCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DACD0  7C 08 03 A6 */	mtlr r0
/* 804DACD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DACD8  4E 80 00 20 */	blr 
