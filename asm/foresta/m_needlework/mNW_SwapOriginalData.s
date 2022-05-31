lbl_803C9D2C:
/* 803C9D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9D30  7C 08 02 A6 */	mflr r0
/* 803C9D34  3C A0 81 17 */	lis r5, mNW_swap_work@ha /* 0x8116B098@ha */
/* 803C9D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9D3C  38 05 B0 98 */	addi r0, r5, mNW_swap_work@l /* 0x8116B098@l */
/* 803C9D40  38 A0 02 20 */	li r5, 0x220
/* 803C9D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9D48  7C 9F 23 78 */	mr r31, r4
/* 803C9D4C  7C 04 03 78 */	mr r4, r0
/* 803C9D50  93 C1 00 08 */	stw r30, 8(r1)
/* 803C9D54  7C 7E 1B 78 */	mr r30, r3
/* 803C9D58  4B C9 32 C5 */	bl func_8005D01C
/* 803C9D5C  7F E3 FB 78 */	mr r3, r31
/* 803C9D60  7F C4 F3 78 */	mr r4, r30
/* 803C9D64  38 A0 02 20 */	li r5, 0x220
/* 803C9D68  4B C9 32 B5 */	bl func_8005D01C
/* 803C9D6C  3C 60 81 17 */	lis r3, mNW_swap_work@ha /* 0x8116B098@ha */
/* 803C9D70  7F E4 FB 78 */	mr r4, r31
/* 803C9D74  38 63 B0 98 */	addi r3, r3, mNW_swap_work@l /* 0x8116B098@l */
/* 803C9D78  38 A0 02 20 */	li r5, 0x220
/* 803C9D7C  4B C9 32 A1 */	bl func_8005D01C
/* 803C9D80  38 7E 00 20 */	addi r3, r30, 0x20
/* 803C9D84  38 80 02 00 */	li r4, 0x200
/* 803C9D88  4B CA FE 95 */	bl DCStoreRangeNoSync
/* 803C9D8C  38 7F 00 20 */	addi r3, r31, 0x20
/* 803C9D90  38 80 02 00 */	li r4, 0x200
/* 803C9D94  4B CA FE 89 */	bl DCStoreRangeNoSync
/* 803C9D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9D9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9DA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C9DA4  7C 08 03 A6 */	mtlr r0
/* 803C9DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9DAC  4E 80 00 20 */	blr 
