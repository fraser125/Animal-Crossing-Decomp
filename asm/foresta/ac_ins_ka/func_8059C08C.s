lbl_8059C08C:
/* 8059C08C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059C090  7C 08 02 A6 */	mflr r0
/* 8059C094  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059C098  39 61 00 30 */	addi r11, r1, 0x30
/* 8059C09C  4B AF EE 39 */	bl func_8009AED4
/* 8059C0A0  A8 03 00 24 */	lha r0, 0x24(r3)
/* 8059C0A4  7C 7F 1B 78 */	mr r31, r3
/* 8059C0A8  7C 9D 23 78 */	mr r29, r4
/* 8059C0AC  2C 00 00 00 */	cmpwi r0, 0
/* 8059C0B0  40 82 00 38 */	bne lbl_8059C0E8
/* 8059C0B4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059C0B8  3C 60 80 65 */	lis r3, data_8064A0BC@ha /* 0x8064A0BC@ha */
/* 8059C0BC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059C0C0  C0 23 A0 BC */	lfs f1, data_8064A0BC@l(r3)  /* 0x8064A0BC@l */
/* 8059C0C4  38 61 00 08 */	addi r3, r1, 8
/* 8059C0C8  90 81 00 08 */	stw r4, 8(r1)
/* 8059C0CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059C0D0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059C0D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059C0D8  4B DF 37 49 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 8059C0DC  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8059C0E0  3B C0 00 02 */	li r30, 2
/* 8059C0E4  48 00 00 08 */	b lbl_8059C0EC
lbl_8059C0E8:
/* 8059C0E8  3B C0 00 01 */	li r30, 1
lbl_8059C0EC:
/* 8059C0EC  3C 80 80 65 */	lis r4, lit_437@ha /* 0x8064A0C0@ha */
/* 8059C0F0  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064A0C4@ha */
/* 8059C0F4  C0 24 A0 C0 */	lfs f1, lit_437@l(r4)  /* 0x8064A0C0@l */
/* 8059C0F8  38 A0 00 01 */	li r5, 1
/* 8059C0FC  C0 03 A0 C4 */	lfs f0, lit_438@l(r3)  /* 0x8064A0C4@l */
/* 8059C100  38 00 2D 27 */	li r0, 0x2d27
/* 8059C104  D0 3F 02 10 */	stfs f1, 0x210(r31)
/* 8059C108  38 7F 00 0C */	addi r3, r31, 0xc
/* 8059C10C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059C110  D0 1F 02 14 */	stfs f0, 0x214(r31)
/* 8059C114  90 BF 02 18 */	stw r5, 0x218(r31)
/* 8059C118  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059C11C  4B E1 ED A1 */	bl xyz_t_move
/* 8059C120  3C 80 80 5A */	lis r4, aIKA_actor_move@ha /* 0x8059C80C@ha */
/* 8059C124  7F E3 FB 78 */	mr r3, r31
/* 8059C128  38 04 C8 0C */	addi r0, r4, aIKA_actor_move@l /* 0x8059C80C@l */
/* 8059C12C  7F C4 F3 78 */	mr r4, r30
/* 8059C130  90 1F 01 64 */	stw r0, 0x164(r31)
/* 8059C134  7F A5 EB 78 */	mr r5, r29
/* 8059C138  48 00 06 89 */	bl aIKA_setupAction
/* 8059C13C  39 61 00 30 */	addi r11, r1, 0x30
/* 8059C140  4B AF ED E1 */	bl func_8009AF20
/* 8059C144  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059C148  7C 08 03 A6 */	mtlr r0
/* 8059C14C  38 21 00 30 */	addi r1, r1, 0x30
/* 8059C150  4E 80 00 20 */	blr 
