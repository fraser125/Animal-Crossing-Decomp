lbl_80493914:
/* 80493914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493918  7C 08 02 A6 */	mflr r0
/* 8049391C  3C 60 80 69 */	lis r3, l_normal3_normal@ha /* 0x8068B5E8@ha */
/* 80493920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493924  54 80 10 3A */	slwi r0, r4, 2
/* 80493928  38 83 B5 E8 */	addi r4, r3, l_normal3_normal@l /* 0x8068B5E8@l */
/* 8049392C  38 60 00 0A */	li r3, 0xa
/* 80493930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80493934  7F E4 00 2E */	lwzx r31, r4, r0
/* 80493938  4B F5 0A 99 */	bl mQst_GetRandom
/* 8049393C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493940  7C 7F 1A 14 */	add r3, r31, r3
/* 80493944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80493948  7C 08 03 A6 */	mtlr r0
/* 8049394C  38 21 00 10 */	addi r1, r1, 0x10
/* 80493950  4E 80 00 20 */	blr 