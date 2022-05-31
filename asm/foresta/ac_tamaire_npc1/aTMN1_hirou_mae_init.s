lbl_8058AF14:
/* 8058AF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AF18  7C 08 02 A6 */	mflr r0
/* 8058AF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058AF24  7C 9F 23 78 */	mr r31, r4
/* 8058AF28  93 C1 00 08 */	stw r30, 8(r1)
/* 8058AF2C  7C 7E 1B 78 */	mr r30, r3
/* 8058AF30  4B FF F7 61 */	bl func_8058A690
/* 8058AF34  2C 03 00 00 */	cmpwi r3, 0
/* 8058AF38  40 82 00 38 */	bne lbl_8058AF70
/* 8058AF3C  4B AD 1D B9 */	bl fqrand
/* 8058AF40  3C 60 80 65 */	lis r3, lit_713@ha /* 0x80649B98@ha */
/* 8058AF44  C0 03 9B 98 */	lfs f0, lit_713@l(r3)  /* 0x80649B98@l */
/* 8058AF48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058AF4C  40 80 00 24 */	bge lbl_8058AF70
/* 8058AF50  7F C3 F3 78 */	mr r3, r30
/* 8058AF54  7F E4 FB 78 */	mr r4, r31
/* 8058AF58  4B FF FF 85 */	bl aTMN1_normal_wait_init
/* 8058AF5C  38 00 00 0A */	li r0, 0xa
/* 8058AF60  7F C3 F3 78 */	mr r3, r30
/* 8058AF64  B0 1E 09 A0 */	sth r0, 0x9a0(r30)
/* 8058AF68  4B FF F7 51 */	bl aTMN1_nageru_bitset
/* 8058AF6C  48 00 00 14 */	b lbl_8058AF80
lbl_8058AF70:
/* 8058AF70  7F C3 F3 78 */	mr r3, r30
/* 8058AF74  7F E4 FB 78 */	mr r4, r31
/* 8058AF78  38 A0 00 01 */	li r5, 1
/* 8058AF7C  48 00 02 D1 */	bl aTMN1_setup_think_proc
lbl_8058AF80:
/* 8058AF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AF84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058AF88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058AF8C  7C 08 03 A6 */	mtlr r0
/* 8058AF90  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AF94  4E 80 00 20 */	blr 
