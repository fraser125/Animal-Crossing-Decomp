lbl_803B4E78:
/* 803B4E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4E7C  7C 08 02 A6 */	mflr r0
/* 803B4E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4E88  7C 9F 23 78 */	mr r31, r4
/* 803B4E8C  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4E90  7C 7E 1B 78 */	mr r30, r3
/* 803B4E94  4B FF FD F9 */	bl mISL_gc_to_agb_personal
/* 803B4E98  38 7E 00 14 */	addi r3, r30, 0x14
/* 803B4E9C  38 9F 00 14 */	addi r4, r31, 0x14
/* 803B4EA0  4B FF F9 F9 */	bl mISL_gc_to_agb_time
/* 803B4EA4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 803B4EA8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 803B4EAC  4B FF FE 55 */	bl mISL_gc_to_agb_memuni
/* 803B4EB0  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 803B4EB4  38 7E 00 34 */	addi r3, r30, 0x34
/* 803B4EB8  38 9F 00 31 */	addi r4, r31, 0x31
/* 803B4EBC  98 1E 00 30 */	stb r0, 0x30(r30)
/* 803B4EC0  4B FF FE 89 */	bl mISL_gc_to_agb_memletter
/* 803B4EC4  38 7E 00 38 */	addi r3, r30, 0x38
/* 803B4EC8  38 9F 00 32 */	addi r4, r31, 0x32
/* 803B4ECC  4B FF FB C9 */	bl mISL_gc_to_agb_mail
/* 803B4ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4ED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4EDC  7C 08 03 A6 */	mtlr r0
/* 803B4EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4EE4  4E 80 00 20 */	blr 
