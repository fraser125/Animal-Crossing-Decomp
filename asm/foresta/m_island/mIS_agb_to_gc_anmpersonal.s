lbl_803B4C20:
/* 803B4C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4C24  7C 08 02 A6 */	mflr r0
/* 803B4C28  38 A0 00 01 */	li r5, 1
/* 803B4C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4C34  7C 9F 23 78 */	mr r31, r4
/* 803B4C38  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4C3C  7C 7E 1B 78 */	mr r30, r3
/* 803B4C40  4B FF F4 DD */	bl mISL_short
/* 803B4C44  38 7E 00 02 */	addi r3, r30, 2
/* 803B4C48  38 9F 00 02 */	addi r4, r31, 2
/* 803B4C4C  38 A0 00 01 */	li r5, 1
/* 803B4C50  4B FF F4 CD */	bl mISL_short
/* 803B4C54  38 7F 00 04 */	addi r3, r31, 4
/* 803B4C58  38 9E 00 04 */	addi r4, r30, 4
/* 803B4C5C  38 A0 00 08 */	li r5, 8
/* 803B4C60  4B CA 83 BD */	bl func_8005D01C
/* 803B4C64  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803B4C68  98 1E 00 0C */	stb r0, 0xc(r30)
/* 803B4C6C  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 803B4C70  98 1E 00 0D */	stb r0, 0xd(r30)
/* 803B4C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4C80  7C 08 03 A6 */	mtlr r0
/* 803B4C84  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4C88  4E 80 00 20 */	blr 
