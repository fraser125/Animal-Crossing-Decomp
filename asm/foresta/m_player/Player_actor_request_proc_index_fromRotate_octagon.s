lbl_80500124:
/* 80500124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80500128  7C 08 02 A6 */	mflr r0
/* 8050012C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80500130  39 61 00 20 */	addi r11, r1, 0x20
/* 80500134  4B B9 AD A1 */	bl func_8009AED4
/* 80500138  2C 05 00 00 */	cmpwi r5, 0
/* 8050013C  7C 7D 1B 78 */	mr r29, r3
/* 80500140  7C 9E 23 78 */	mr r30, r4
/* 80500144  41 82 00 4C */	beq lbl_80500190
/* 80500148  83 FD 0D 20 */	lwz r31, 0xd20(r29)
/* 8050014C  4B FD 52 21 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80500150  2C 1F 00 41 */	cmpwi r31, 0x41
/* 80500154  41 82 00 1C */	beq lbl_80500170
/* 80500158  7F C3 F3 78 */	mr r3, r30
/* 8050015C  38 80 00 00 */	li r4, 0
/* 80500160  38 A0 00 00 */	li r5, 0
/* 80500164  38 C0 00 13 */	li r6, 0x13
/* 80500168  4B FF CB D9 */	bl func_804FCD40
/* 8050016C  48 00 00 24 */	b lbl_80500190
lbl_80500170:
/* 80500170  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80500174  80 9D 0D 18 */	lwz r4, 0xd18(r29)
/* 80500178  C0 23 83 54 */	lfs f1, lit_7381@l(r3)  /* 0x80648354@l */
/* 8050017C  7F C3 F3 78 */	mr r3, r30
/* 80500180  80 BD 0D 1C */	lwz r5, 0xd1c(r29)
/* 80500184  38 C0 00 00 */	li r6, 0
/* 80500188  38 E0 00 13 */	li r7, 0x13
/* 8050018C  4B FF A7 11 */	bl func_804FA89C
lbl_80500190:
/* 80500190  39 61 00 20 */	addi r11, r1, 0x20
/* 80500194  4B B9 AD 8D */	bl func_8009AF20
/* 80500198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050019C  7C 08 03 A6 */	mtlr r0
/* 805001A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805001A4  4E 80 00 20 */	blr 