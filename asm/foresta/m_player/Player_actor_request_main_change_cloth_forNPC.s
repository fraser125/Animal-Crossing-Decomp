lbl_805042CC:
/* 805042CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805042D0  7C 08 02 A6 */	mflr r0
/* 805042D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805042D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805042DC  4B B9 6B F5 */	bl func_8009AED0
/* 805042E0  7C 7C 1B 78 */	mr r28, r3
/* 805042E4  7C 9D 23 78 */	mr r29, r4
/* 805042E8  7C BE 2B 78 */	mr r30, r5
/* 805042EC  7C DF 33 78 */	mr r31, r6
/* 805042F0  4B ED 53 51 */	bl get_player_actor_withoutCheck
/* 805042F4  80 C3 0C F8 */	lwz r6, 0xcf8(r3)
/* 805042F8  2C 06 00 41 */	cmpwi r6, 0x41
/* 805042FC  40 82 00 10 */	bne lbl_8050430C
/* 80504300  80 83 0D 18 */	lwz r4, 0xd18(r3)
/* 80504304  80 A3 0D 1C */	lwz r5, 0xd1c(r3)
/* 80504308  48 00 00 0C */	b lbl_80504314
lbl_8050430C:
/* 8050430C  38 80 00 00 */	li r4, 0
/* 80504310  38 A0 00 00 */	li r5, 0
lbl_80504314:
/* 80504314  7F 83 E3 78 */	mr r3, r28
/* 80504318  7F A7 EB 78 */	mr r7, r29
/* 8050431C  7F C8 F3 78 */	mr r8, r30
/* 80504320  7F E9 FB 78 */	mr r9, r31
/* 80504324  39 40 00 13 */	li r10, 0x13
/* 80504328  4B FF FF 09 */	bl func_80504230
/* 8050432C  39 61 00 20 */	addi r11, r1, 0x20
/* 80504330  4B B9 6B ED */	bl func_8009AF1C
/* 80504334  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504338  7C 08 03 A6 */	mtlr r0
/* 8050433C  38 21 00 20 */	addi r1, r1, 0x20
/* 80504340  4E 80 00 20 */	blr 