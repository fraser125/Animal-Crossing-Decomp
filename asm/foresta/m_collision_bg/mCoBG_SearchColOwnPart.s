lbl_80386E30:
/* 80386E30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80386E34  7C 08 02 A6 */	mflr r0
/* 80386E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80386E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80386E40  4B D1 40 8D */	bl func_8009AECC
/* 80386E44  7C 9E 23 78 */	mr r30, r4
/* 80386E48  7C 7B 1B 78 */	mr r27, r3
/* 80386E4C  7F DD 07 34 */	extsh r29, r30
/* 80386E50  7C BF 2B 78 */	mr r31, r5
/* 80386E54  38 1D 7F FF */	addi r0, r29, 0x7fff
/* 80386E58  7C DC 33 78 */	mr r28, r6
/* 80386E5C  7F 64 DB 78 */	mr r4, r27
/* 80386E60  7C 03 07 34 */	extsh r3, r0
/* 80386E64  4B FF FD 99 */	bl mCoBG_Check45Angle
/* 80386E68  2C 03 00 00 */	cmpwi r3, 0
/* 80386E6C  41 82 00 64 */	beq lbl_80386ED0
/* 80386E70  7F 80 07 35 */	extsh. r0, r28
/* 80386E74  40 82 00 30 */	bne lbl_80386EA4
/* 80386E78  A0 9F 00 14 */	lhz r4, 0x14(r31)
/* 80386E7C  38 60 00 01 */	li r3, 1
/* 80386E80  54 80 DE FE */	rlwinm r0, r4, 0x1b, 0x1b, 0x1f
/* 80386E84  60 00 00 02 */	ori r0, r0, 2
/* 80386E88  50 04 2D B4 */	rlwimi r4, r0, 5, 0x16, 0x1a
/* 80386E8C  B0 9F 00 14 */	sth r4, 0x14(r31)
/* 80386E90  B3 DF 00 2C */	sth r30, 0x2c(r31)
/* 80386E94  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80386E98  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80386E9C  98 1F 00 17 */	stb r0, 0x17(r31)
/* 80386EA0  48 00 01 18 */	b lbl_80386FB8
lbl_80386EA4:
/* 80386EA4  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 80386EA8  38 60 00 01 */	li r3, 1
/* 80386EAC  54 80 F6 FE */	rlwinm r0, r4, 0x1e, 0x1b, 0x1f
/* 80386EB0  60 00 00 02 */	ori r0, r0, 2
/* 80386EB4  50 04 16 7A */	rlwimi r4, r0, 2, 0x19, 0x1d
/* 80386EB8  98 9F 00 14 */	stb r4, 0x14(r31)
/* 80386EBC  B3 DF 00 2C */	sth r30, 0x2c(r31)
/* 80386EC0  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80386EC4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80386EC8  98 1F 00 17 */	stb r0, 0x17(r31)
/* 80386ECC  48 00 00 EC */	b lbl_80386FB8
lbl_80386ED0:
/* 80386ED0  38 1D C0 00 */	addi r0, r29, -16384
/* 80386ED4  7F 64 DB 78 */	mr r4, r27
/* 80386ED8  7C 03 07 34 */	extsh r3, r0
/* 80386EDC  4B FF FD 21 */	bl mCoBG_Check45Angle
/* 80386EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80386EE4  41 82 00 3C */	beq lbl_80386F20
/* 80386EE8  7F 80 07 35 */	extsh. r0, r28
/* 80386EEC  40 82 00 1C */	bne lbl_80386F08
/* 80386EF0  A0 7F 00 14 */	lhz r3, 0x14(r31)
/* 80386EF4  54 60 DE FE */	rlwinm r0, r3, 0x1b, 0x1b, 0x1f
/* 80386EF8  60 00 00 04 */	ori r0, r0, 4
/* 80386EFC  50 03 2D B4 */	rlwimi r3, r0, 5, 0x16, 0x1a
/* 80386F00  B0 7F 00 14 */	sth r3, 0x14(r31)
/* 80386F04  48 00 00 B4 */	b lbl_80386FB8
lbl_80386F08:
/* 80386F08  88 7F 00 14 */	lbz r3, 0x14(r31)
/* 80386F0C  54 60 F6 FE */	rlwinm r0, r3, 0x1e, 0x1b, 0x1f
/* 80386F10  60 00 00 04 */	ori r0, r0, 4
/* 80386F14  50 03 16 7A */	rlwimi r3, r0, 2, 0x19, 0x1d
/* 80386F18  98 7F 00 14 */	stb r3, 0x14(r31)
/* 80386F1C  48 00 00 9C */	b lbl_80386FB8
lbl_80386F20:
/* 80386F20  38 1D 40 00 */	addi r0, r29, 0x4000
/* 80386F24  7F 64 DB 78 */	mr r4, r27
/* 80386F28  7C 03 07 34 */	extsh r3, r0
/* 80386F2C  4B FF FC D1 */	bl mCoBG_Check45Angle
/* 80386F30  2C 03 00 00 */	cmpwi r3, 0
/* 80386F34  41 82 00 3C */	beq lbl_80386F70
/* 80386F38  7F 80 07 35 */	extsh. r0, r28
/* 80386F3C  40 82 00 1C */	bne lbl_80386F58
/* 80386F40  A0 7F 00 14 */	lhz r3, 0x14(r31)
/* 80386F44  54 60 DE FE */	rlwinm r0, r3, 0x1b, 0x1b, 0x1f
/* 80386F48  60 00 00 08 */	ori r0, r0, 8
/* 80386F4C  50 03 2D B4 */	rlwimi r3, r0, 5, 0x16, 0x1a
/* 80386F50  B0 7F 00 14 */	sth r3, 0x14(r31)
/* 80386F54  48 00 00 64 */	b lbl_80386FB8
lbl_80386F58:
/* 80386F58  88 7F 00 14 */	lbz r3, 0x14(r31)
/* 80386F5C  54 60 F6 FE */	rlwinm r0, r3, 0x1e, 0x1b, 0x1f
/* 80386F60  60 00 00 08 */	ori r0, r0, 8
/* 80386F64  50 03 16 7A */	rlwimi r3, r0, 2, 0x19, 0x1d
/* 80386F68  98 7F 00 14 */	stb r3, 0x14(r31)
/* 80386F6C  48 00 00 4C */	b lbl_80386FB8
lbl_80386F70:
/* 80386F70  7F C3 F3 78 */	mr r3, r30
/* 80386F74  7F 64 DB 78 */	mr r4, r27
/* 80386F78  4B FF FC 85 */	bl mCoBG_Check45Angle
/* 80386F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80386F80  41 82 00 38 */	beq lbl_80386FB8
/* 80386F84  7F 80 07 35 */	extsh. r0, r28
/* 80386F88  40 82 00 1C */	bne lbl_80386FA4
/* 80386F8C  A0 7F 00 14 */	lhz r3, 0x14(r31)
/* 80386F90  54 60 DE FE */	rlwinm r0, r3, 0x1b, 0x1b, 0x1f
/* 80386F94  60 00 00 10 */	ori r0, r0, 0x10
/* 80386F98  50 03 2D B4 */	rlwimi r3, r0, 5, 0x16, 0x1a
/* 80386F9C  B0 7F 00 14 */	sth r3, 0x14(r31)
/* 80386FA0  48 00 00 18 */	b lbl_80386FB8
lbl_80386FA4:
/* 80386FA4  88 7F 00 14 */	lbz r3, 0x14(r31)
/* 80386FA8  54 60 F6 FE */	rlwinm r0, r3, 0x1e, 0x1b, 0x1f
/* 80386FAC  60 00 00 10 */	ori r0, r0, 0x10
/* 80386FB0  50 03 16 7A */	rlwimi r3, r0, 2, 0x19, 0x1d
/* 80386FB4  98 7F 00 14 */	stb r3, 0x14(r31)
lbl_80386FB8:
/* 80386FB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80386FBC  4B D1 3F 5D */	bl func_8009AF18
/* 80386FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80386FC4  7C 08 03 A6 */	mtlr r0
/* 80386FC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80386FCC  4E 80 00 20 */	blr 
