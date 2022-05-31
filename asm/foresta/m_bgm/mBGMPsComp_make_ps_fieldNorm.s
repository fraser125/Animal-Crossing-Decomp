lbl_8037C11C:
/* 8037C11C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037C120  7C 08 02 A6 */	mflr r0
/* 8037C124  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037C128  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037C12C  7C 9F 23 78 */	mr r31, r4
/* 8037C130  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037C134  7C 7E 1B 78 */	mr r30, r3
/* 8037C138  38 61 00 08 */	addi r3, r1, 8
/* 8037C13C  4B FF C8 59 */	bl mBGMElem_default_set
/* 8037C140  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C144  9B C1 00 08 */	stb r30, 8(r1)
/* 8037C148  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037C14C  38 81 00 08 */	addi r4, r1, 8
/* 8037C150  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037C154  38 63 01 64 */	addi r3, r3, 0x164
/* 8037C158  38 A0 00 0B */	li r5, 0xb
/* 8037C15C  38 C0 FF FF */	li r6, -1
/* 8037C160  38 E0 00 00 */	li r7, 0
/* 8037C164  39 00 00 FF */	li r8, 0xff
/* 8037C168  4B FF F7 71 */	bl mBGMPsComp_make_ps
/* 8037C16C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C170  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037C174  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037C178  7C 08 03 A6 */	mtlr r0
/* 8037C17C  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C180  4E 80 00 20 */	blr 
