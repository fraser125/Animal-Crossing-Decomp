lbl_80534D3C:
/* 80534D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534D40  7C 08 02 A6 */	mflr r0
/* 80534D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80534D4C  3B E0 00 18 */	li r31, 0x18
/* 80534D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80534D54  7C 7E 1B 78 */	mr r30, r3
/* 80534D58  88 03 08 98 */	lbz r0, 0x898(r3)
/* 80534D5C  28 00 00 01 */	cmplwi r0, 1
/* 80534D60  40 82 00 08 */	bne lbl_80534D68
/* 80534D64  3B E0 00 19 */	li r31, 0x19
lbl_80534D68:
/* 80534D68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80534D6C  80 DE 08 68 */	lwz r6, 0x868(r30)
/* 80534D70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80534D74  80 9E 08 6C */	lwz r4, 0x86c(r30)
/* 80534D78  3C A3 00 02 */	addis r5, r3, 2
/* 80534D7C  A0 66 00 00 */	lhz r3, 0(r6)
/* 80534D80  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 80534D84  80 BE 08 70 */	lwz r5, 0x870(r30)
/* 80534D88  81 86 00 20 */	lwz r12, 0x20(r6)
/* 80534D8C  A0 DE 00 06 */	lhz r6, 6(r30)
/* 80534D90  7D 89 03 A6 */	mtctr r12
/* 80534D94  4E 80 04 21 */	bctrl 
/* 80534D98  38 00 00 00 */	li r0, 0
/* 80534D9C  3C 60 00 01 */	lis r3, 0x0001 /* 0x000083F7@ha */
/* 80534DA0  98 1E 07 F6 */	stb r0, 0x7f6(r30)
/* 80534DA4  38 03 83 F7 */	addi r0, r3, 0x83F7 /* 0x000083F7@l */
/* 80534DA8  7F C3 F3 78 */	mr r3, r30
/* 80534DAC  7F E4 FB 78 */	mr r4, r31
/* 80534DB0  90 1E 08 40 */	stw r0, 0x840(r30)
/* 80534DB4  4B FF AF 79 */	bl aNPC_setupAction
/* 80534DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80534DC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80534DC4  7C 08 03 A6 */	mtlr r0
/* 80534DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80534DCC  4E 80 00 20 */	blr 
