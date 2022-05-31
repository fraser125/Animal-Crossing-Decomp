lbl_804F9B88:
/* 804F9B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9B8C  7C 08 02 A6 */	mflr r0
/* 804F9B90  3C A0 80 64 */	lis r5, lit_790@ha /* 0x80646668@ha */
/* 804F9B94  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804F9B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9B9C  39 05 66 68 */	addi r8, r5, lit_790@l /* 0x80646668@l */
/* 804F9BA0  C0 08 00 00 */	lfs f0, 0(r8)
/* 804F9BA4  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804F9BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9BAC  38 E5 65 64 */	addi r7, r5, lit_603@l /* 0x80646564@l */
/* 804F9BB0  C0 27 00 00 */	lfs f1, 0(r7)
/* 804F9BB4  38 E6 6C 4C */	addi r7, r6, lit_2671@l /* 0x80646C4C@l */
/* 804F9BB8  93 C1 00 08 */	stw r30, 8(r1)
/* 804F9BBC  3C A0 80 65 */	lis r5, lit_9485@ha /* 0x806484C8@ha */
/* 804F9BC0  38 C5 84 C8 */	addi r6, r5, lit_9485@l /* 0x806484C8@l */
/* 804F9BC4  C0 67 00 00 */	lfs f3, 0(r7)
/* 804F9BC8  81 23 0D 60 */	lwz r9, 0xd60(r3)
/* 804F9BCC  FC 40 08 90 */	fmr f2, f1
/* 804F9BD0  80 03 0D 64 */	lwz r0, 0xd64(r3)
/* 804F9BD4  7C 7E 1B 78 */	mr r30, r3
/* 804F9BD8  C0 86 00 00 */	lfs f4, 0(r6)
/* 804F9BDC  7C 9F 23 78 */	mr r31, r4
/* 804F9BE0  91 23 0D 18 */	stw r9, 0xd18(r3)
/* 804F9BE4  38 A0 00 57 */	li r5, 0x57
/* 804F9BE8  38 C0 00 57 */	li r6, 0x57
/* 804F9BEC  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 804F9BF0  38 E0 00 00 */	li r7, 0
/* 804F9BF4  39 00 00 00 */	li r8, 0
/* 804F9BF8  80 03 0D 68 */	lwz r0, 0xd68(r3)
/* 804F9BFC  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 804F9C00  A0 03 0D 6C */	lhz r0, 0xd6c(r3)
/* 804F9C04  B0 03 0D 24 */	sth r0, 0xd24(r3)
/* 804F9C08  D0 03 0D 28 */	stfs f0, 0xd28(r3)
/* 804F9C0C  80 03 0D 70 */	lwz r0, 0xd70(r3)
/* 804F9C10  90 03 0D 2C */	stw r0, 0xd2c(r3)
/* 804F9C14  4B FD CB FD */	bl Player_actor_InitAnimation_Base2
/* 804F9C18  7F C3 F3 78 */	mr r3, r30
/* 804F9C1C  7F E4 FB 78 */	mr r4, r31
/* 804F9C20  4B FD BC D9 */	bl Player_actor_setup_main_Base
/* 804F9C24  7F C3 F3 78 */	mr r3, r30
/* 804F9C28  4B FE 58 5D */	bl Player_actor_sound_GASAGOSO
/* 804F9C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9C34  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F9C38  7C 08 03 A6 */	mtlr r0
/* 804F9C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9C40  4E 80 00 20 */	blr 
