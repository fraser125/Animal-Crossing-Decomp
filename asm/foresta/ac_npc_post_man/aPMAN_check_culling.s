lbl_8056DD84:
/* 8056DD84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056DD88  7C 08 02 A6 */	mflr r0
/* 8056DD8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056DD90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8056DD94  7C 7F 1B 78 */	mr r31, r3
/* 8056DD98  88 03 09 9E */	lbz r0, 0x99e(r3)
/* 8056DD9C  28 00 00 01 */	cmplwi r0, 1
/* 8056DDA0  40 82 00 18 */	bne lbl_8056DDB8
/* 8056DDA4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8056DDA8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8056DDAC  40 82 00 A8 */	bne lbl_8056DE54
/* 8056DDB0  4B E0 66 91 */	bl Actor_delete
/* 8056DDB4  48 00 00 A0 */	b lbl_8056DE54
lbl_8056DDB8:
/* 8056DDB8  88 1F 09 98 */	lbz r0, 0x998(r31)
/* 8056DDBC  28 00 00 00 */	cmplwi r0, 0
/* 8056DDC0  41 82 00 94 */	beq lbl_8056DE54
/* 8056DDC4  7C 83 23 78 */	mr r3, r4
/* 8056DDC8  4B E6 B8 79 */	bl get_player_actor_withoutCheck
/* 8056DDCC  28 03 00 00 */	cmplwi r3, 0
/* 8056DDD0  41 82 00 84 */	beq lbl_8056DE54
/* 8056DDD4  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 8056DDD8  38 81 00 08 */	addi r4, r1, 8
/* 8056DDDC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8056DDE0  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056DDE4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8056DDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056DDEC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8056DDF0  38 61 00 0C */	addi r3, r1, 0xc
/* 8056DDF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8056DDF8  4B E3 79 69 */	bl mFI_Wpos2BlockNum
/* 8056DDFC  2C 03 00 00 */	cmpwi r3, 0
/* 8056DE00  41 82 00 54 */	beq lbl_8056DE54
/* 8056DE04  88 7F 00 08 */	lbz r3, 8(r31)
/* 8056DE08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8056DE0C  7C 63 07 74 */	extsb r3, r3
/* 8056DE10  7C 63 00 51 */	subf. r3, r3, r0
/* 8056DE14  7C 03 00 D0 */	neg r0, r3
/* 8056DE18  41 80 00 08 */	blt lbl_8056DE20
/* 8056DE1C  7C 60 1B 78 */	mr r0, r3
lbl_8056DE20:
/* 8056DE20  2C 00 00 01 */	cmpwi r0, 1
/* 8056DE24  41 81 00 28 */	bgt lbl_8056DE4C
/* 8056DE28  88 7F 00 09 */	lbz r3, 9(r31)
/* 8056DE2C  80 01 00 08 */	lwz r0, 8(r1)
/* 8056DE30  7C 63 07 74 */	extsb r3, r3
/* 8056DE34  7C 63 00 51 */	subf. r3, r3, r0
/* 8056DE38  7C 03 00 D0 */	neg r0, r3
/* 8056DE3C  41 80 00 08 */	blt lbl_8056DE44
/* 8056DE40  7C 60 1B 78 */	mr r0, r3
lbl_8056DE44:
/* 8056DE44  2C 00 00 01 */	cmpwi r0, 1
/* 8056DE48  40 81 00 0C */	ble lbl_8056DE54
lbl_8056DE4C:
/* 8056DE4C  7F E3 FB 78 */	mr r3, r31
/* 8056DE50  4B E0 65 F1 */	bl Actor_delete
lbl_8056DE54:
/* 8056DE54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056DE58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8056DE5C  7C 08 03 A6 */	mtlr r0
/* 8056DE60  38 21 00 30 */	addi r1, r1, 0x30
/* 8056DE64  4E 80 00 20 */	blr 
