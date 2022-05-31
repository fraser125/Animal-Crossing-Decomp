lbl_80421BC8:
/* 80421BC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421BCC  7C 08 02 A6 */	mflr r0
/* 80421BD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421BD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80421BD8  4B C7 92 F9 */	bl func_8009AED0
/* 80421BDC  7C 9D 23 78 */	mr r29, r4
/* 80421BE0  7C 7C 1B 78 */	mr r28, r3
/* 80421BE4  80 64 00 00 */	lwz r3, 0(r4)
/* 80421BE8  3B C0 00 02 */	li r30, 2
/* 80421BEC  4B F7 C0 01 */	bl mEv_check_keep
/* 80421BF0  2C 03 00 00 */	cmpwi r3, 0
/* 80421BF4  40 82 00 10 */	bne lbl_80421C04
/* 80421BF8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80421BFC  4B F7 BF 89 */	bl mEv_set_keep
/* 80421C00  3B C0 00 01 */	li r30, 1
lbl_80421C04:
/* 80421C04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80421C08  38 80 00 00 */	li r4, 0
/* 80421C0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80421C10  3F E3 00 02 */	addis r31, r3, 2
/* 80421C14  88 1F 60 03 */	lbz r0, 0x6003(r31)
/* 80421C18  98 9F 41 63 */	stb r4, 0x4163(r31)
/* 80421C1C  28 00 00 04 */	cmplwi r0, 4
/* 80421C20  41 82 00 A4 */	beq lbl_80421CC4
/* 80421C24  4B F7 D6 A9 */	bl mMC_check_birth_day
/* 80421C28  2C 03 00 00 */	cmpwi r3, 0
/* 80421C2C  41 82 00 2C */	beq lbl_80421C58
/* 80421C30  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D075@ha */
/* 80421C34  7F 83 E3 78 */	mr r3, r28
/* 80421C38  7F A4 EB 78 */	mr r4, r29
/* 80421C3C  38 C0 00 51 */	li r6, 0x51
/* 80421C40  38 A5 D0 75 */	addi r5, r5, 0xD075 /* 0x0000D075@l */
/* 80421C44  38 E0 00 01 */	li r7, 1
/* 80421C48  4B FF A3 65 */	bl make_actor_in_free_block
/* 80421C4C  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 80421C50  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
/* 80421C54  48 00 00 70 */	b lbl_80421CC4
lbl_80421C58:
/* 80421C58  4B F7 D4 4D */	bl mGH_check_birth
/* 80421C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80421C60  41 82 00 34 */	beq lbl_80421C94
/* 80421C64  38 00 00 01 */	li r0, 1
/* 80421C68  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D077@ha */
/* 80421C6C  98 1F 41 63 */	stb r0, 0x4163(r31)
/* 80421C70  7F 83 E3 78 */	mr r3, r28
/* 80421C74  7F A4 EB 78 */	mr r4, r29
/* 80421C78  38 A5 D0 77 */	addi r5, r5, 0xD077 /* 0x0000D077@l */
/* 80421C7C  38 C0 00 51 */	li r6, 0x51
/* 80421C80  38 E0 00 01 */	li r7, 1
/* 80421C84  4B FF A3 29 */	bl make_actor_in_free_block
/* 80421C88  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 80421C8C  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
/* 80421C90  48 00 00 34 */	b lbl_80421CC4
lbl_80421C94:
/* 80421C94  4B F7 D5 E1 */	bl mMC_check_birth
/* 80421C98  2C 03 00 00 */	cmpwi r3, 0
/* 80421C9C  41 82 00 28 */	beq lbl_80421CC4
/* 80421CA0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D075@ha */
/* 80421CA4  7F 83 E3 78 */	mr r3, r28
/* 80421CA8  7F A4 EB 78 */	mr r4, r29
/* 80421CAC  38 C0 00 51 */	li r6, 0x51
/* 80421CB0  38 A5 D0 75 */	addi r5, r5, 0xD075 /* 0x0000D075@l */
/* 80421CB4  38 E0 00 01 */	li r7, 1
/* 80421CB8  4B FF A2 F5 */	bl make_actor_in_free_block
/* 80421CBC  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 80421CC0  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
lbl_80421CC4:
/* 80421CC4  7F C3 F3 78 */	mr r3, r30
/* 80421CC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80421CCC  4B C7 92 51 */	bl func_8009AF1C
/* 80421CD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421CD4  7C 08 03 A6 */	mtlr r0
/* 80421CD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80421CDC  4E 80 00 20 */	blr 
