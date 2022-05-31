lbl_8042AB24:
/* 8042AB24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042AB28  7C 08 02 A6 */	mflr r0
/* 8042AB2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042AB30  39 61 00 20 */	addi r11, r1, 0x20
/* 8042AB34  4B C7 03 A1 */	bl func_8009AED4
/* 8042AB38  7C 9E 23 78 */	mr r30, r4
/* 8042AB3C  7C 7D 1B 78 */	mr r29, r3
/* 8042AB40  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8042AB44  38 80 58 0B */	li r4, 0x580b
/* 8042AB48  38 A0 00 01 */	li r5, 1
/* 8042AB4C  4B F4 B1 F5 */	bl Actor_info_fgName_search
/* 8042AB50  7C 7F 1B 78 */	mr r31, r3
/* 8042AB54  7F C3 F3 78 */	mr r3, r30
/* 8042AB58  4B FF FE 9D */	bl func_8042A9F4
/* 8042AB5C  28 1F 00 00 */	cmplwi r31, 0
/* 8042AB60  41 82 00 20 */	beq lbl_8042AB80
/* 8042AB64  93 FD 01 80 */	stw r31, 0x180(r29)
/* 8042AB68  38 00 00 01 */	li r0, 1
/* 8042AB6C  7F A3 EB 78 */	mr r3, r29
/* 8042AB70  7F C4 F3 78 */	mr r4, r30
/* 8042AB74  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 8042AB78  38 A0 00 02 */	li r5, 2
/* 8042AB7C  48 00 09 99 */	bl aID_setupAction
lbl_8042AB80:
/* 8042AB80  39 61 00 20 */	addi r11, r1, 0x20
/* 8042AB84  4B C7 03 9D */	bl func_8009AF20
/* 8042AB88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042AB8C  7C 08 03 A6 */	mtlr r0
/* 8042AB90  38 21 00 20 */	addi r1, r1, 0x20
/* 8042AB94  4E 80 00 20 */	blr 
