lbl_8057E0D0:
/* 8057E0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E0D4  7C 08 02 A6 */	mflr r0
/* 8057E0D8  38 80 00 04 */	li r4, 4
/* 8057E0DC  38 A0 00 02 */	li r5, 2
/* 8057E0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E0E4  38 C0 00 03 */	li r6, 3
/* 8057E0E8  38 E0 00 00 */	li r7, 0
/* 8057E0EC  A8 03 09 B4 */	lha r0, 0x9b4(r3)
/* 8057E0F0  54 00 10 3A */	slwi r0, r0, 2
/* 8057E0F4  7D 23 02 14 */	add r9, r3, r0
/* 8057E0F8  A9 09 09 C8 */	lha r8, 0x9c8(r9)
/* 8057E0FC  A9 29 09 CA */	lha r9, 0x9ca(r9)
/* 8057E100  4B FF E8 AD */	bl aSHM_set_request_act
/* 8057E104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E108  7C 08 03 A6 */	mtlr r0
/* 8057E10C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E110  4E 80 00 20 */	blr 
