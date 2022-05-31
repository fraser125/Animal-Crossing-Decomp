lbl_8046D228:
/* 8046D228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046D22C  7C 08 02 A6 */	mflr r0
/* 8046D230  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046D238  7C 9F 23 78 */	mr r31, r4
/* 8046D23C  93 C1 00 08 */	stw r30, 8(r1)
/* 8046D240  7C 7E 1B 78 */	mr r30, r3
/* 8046D244  4B FF F7 99 */	bl func_8046C9DC
/* 8046D248  7F C3 F3 78 */	mr r3, r30
/* 8046D24C  7F E4 FB 78 */	mr r4, r31
/* 8046D250  4B FF F8 21 */	bl mi_dango_check_player
/* 8046D254  A8 7E 00 7A */	lha r3, 0x7a(r30)
/* 8046D258  38 03 FF FF */	addi r0, r3, -1
/* 8046D25C  B0 1E 00 7A */	sth r0, 0x7a(r30)
/* 8046D260  A8 1E 00 7A */	lha r0, 0x7a(r30)
/* 8046D264  2C 00 00 00 */	cmpwi r0, 0
/* 8046D268  40 80 00 0C */	bge lbl_8046D274
/* 8046D26C  38 00 00 00 */	li r0, 0
/* 8046D270  B0 1E 00 7A */	sth r0, 0x7a(r30)
lbl_8046D274:
/* 8046D274  A8 1E 00 7A */	lha r0, 0x7a(r30)
/* 8046D278  2C 00 03 84 */	cmpwi r0, 0x384
/* 8046D27C  40 81 00 0C */	ble lbl_8046D288
/* 8046D280  38 00 03 84 */	li r0, 0x384
/* 8046D284  B0 1E 00 7A */	sth r0, 0x7a(r30)
lbl_8046D288:
/* 8046D288  A8 1E 00 7A */	lha r0, 0x7a(r30)
/* 8046D28C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8046D290  40 81 00 44 */	ble lbl_8046D2D4
/* 8046D294  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 8046D298  2C 00 00 00 */	cmpwi r0, 0
/* 8046D29C  40 82 00 24 */	bne lbl_8046D2C0
/* 8046D2A0  A8 1E 00 80 */	lha r0, 0x80(r30)
/* 8046D2A4  2C 00 00 00 */	cmpwi r0, 0
/* 8046D2A8  40 82 00 18 */	bne lbl_8046D2C0
/* 8046D2AC  7F C3 F3 78 */	mr r3, r30
/* 8046D2B0  7F E5 FB 78 */	mr r5, r31
/* 8046D2B4  38 80 00 01 */	li r4, 1
/* 8046D2B8  4B FF FD 65 */	bl mi_dango_setupAction
/* 8046D2BC  48 00 00 18 */	b lbl_8046D2D4
lbl_8046D2C0:
/* 8046D2C0  A8 7E 00 6E */	lha r3, 0x6e(r30)
/* 8046D2C4  2C 03 00 0A */	cmpwi r3, 0xa
/* 8046D2C8  40 80 00 0C */	bge lbl_8046D2D4
/* 8046D2CC  38 03 00 01 */	addi r0, r3, 1
/* 8046D2D0  B0 1E 00 6E */	sth r0, 0x6e(r30)
lbl_8046D2D4:
/* 8046D2D4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046D2D8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046D2DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8046D2E0  A8 03 16 96 */	lha r0, 0x1696(r3)
/* 8046D2E4  2C 00 00 00 */	cmpwi r0, 0
/* 8046D2E8  41 82 00 14 */	beq lbl_8046D2FC
/* 8046D2EC  7F C3 F3 78 */	mr r3, r30
/* 8046D2F0  7F E5 FB 78 */	mr r5, r31
/* 8046D2F4  38 80 00 01 */	li r4, 1
/* 8046D2F8  4B FF FD 25 */	bl mi_dango_setupAction
lbl_8046D2FC:
/* 8046D2FC  81 9E 00 04 */	lwz r12, 4(r30)
/* 8046D300  7F C3 F3 78 */	mr r3, r30
/* 8046D304  7F E4 FB 78 */	mr r4, r31
/* 8046D308  7D 89 03 A6 */	mtctr r12
/* 8046D30C  4E 80 04 21 */	bctrl 
/* 8046D310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046D314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046D318  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046D31C  7C 08 03 A6 */	mtlr r0
/* 8046D320  38 21 00 10 */	addi r1, r1, 0x10
/* 8046D324  4E 80 00 20 */	blr 
