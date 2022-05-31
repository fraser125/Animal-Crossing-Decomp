lbl_80493490:
/* 80493490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493494  7C 08 02 A6 */	mflr r0
/* 80493498  3C 60 80 69 */	lis r3, l_ki_normal@ha /* 0x8068B480@ha */
/* 8049349C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804934A0  54 80 10 3A */	slwi r0, r4, 2
/* 804934A4  38 83 B4 80 */	addi r4, r3, l_ki_normal@l /* 0x8068B480@l */
/* 804934A8  38 60 00 0A */	li r3, 0xa
/* 804934AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804934B0  7F E4 00 2E */	lwzx r31, r4, r0
/* 804934B4  4B F5 0F 1D */	bl mQst_GetRandom
/* 804934B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804934BC  7C 7F 1A 14 */	add r3, r31, r3
/* 804934C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804934C4  7C 08 03 A6 */	mtlr r0
/* 804934C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804934CC  4E 80 00 20 */	blr 
