lbl_8048831C:
/* 8048831C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488320  7C 08 02 A6 */	mflr r0
/* 80488324  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488328  39 61 00 20 */	addi r11, r1, 0x20
/* 8048832C  4B C1 2B A9 */	bl func_8009AED4
/* 80488330  7C 7D 1B 78 */	mr r29, r3
/* 80488334  8B C3 01 86 */	lbz r30, 0x186(r3)
/* 80488338  4B EF B2 09 */	bl func_80383540
/* 8048833C  4B EF B8 31 */	bl mChoice_Get_ChoseNum
/* 80488340  7C 7F 1B 78 */	mr r31, r3
/* 80488344  4B EF B1 FD */	bl func_80383540
/* 80488348  4B EF B8 2D */	bl mChoice_Clear_ChoseNum
/* 8048834C  3C 80 80 69 */	lis r4, talk_proc@ha /* 0x8068AD08@ha */
/* 80488350  93 FD 01 A4 */	stw r31, 0x1a4(r29)
/* 80488354  57 C0 10 3A */	slwi r0, r30, 2
/* 80488358  7F A3 EB 78 */	mr r3, r29
/* 8048835C  38 84 AD 08 */	addi r4, r4, talk_proc@l /* 0x8068AD08@l */
/* 80488360  7D 84 00 2E */	lwzx r12, r4, r0
/* 80488364  7D 89 03 A6 */	mtctr r12
/* 80488368  4E 80 04 21 */	bctrl 
/* 8048836C  38 00 00 01 */	li r0, 1
/* 80488370  39 61 00 20 */	addi r11, r1, 0x20
/* 80488374  98 1D 01 84 */	stb r0, 0x184(r29)
/* 80488378  4B C1 2B A9 */	bl func_8009AF20
/* 8048837C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488380  7C 08 03 A6 */	mtlr r0
/* 80488384  38 21 00 20 */	addi r1, r1, 0x20
/* 80488388  4E 80 00 20 */	blr 
