lbl_804AE9B0:
/* 804AE9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AE9B4  7C 08 02 A6 */	mflr r0
/* 804AE9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AE9BC  38 00 00 00 */	li r0, 0
/* 804AE9C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AE9C4  7C 9F 23 78 */	mr r31, r4
/* 804AE9C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804AE9CC  7C 7E 1B 78 */	mr r30, r3
/* 804AE9D0  98 03 02 61 */	stb r0, 0x261(r3)
/* 804AE9D4  38 7E 00 6C */	addi r3, r30, 0x6c
/* 804AE9D8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804AE9DC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804AE9E0  90 9E 02 68 */	stw r4, 0x268(r30)
/* 804AE9E4  90 1E 02 6C */	stw r0, 0x26c(r30)
/* 804AE9E8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804AE9EC  90 1E 02 70 */	stw r0, 0x270(r30)
/* 804AE9F0  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804AE9F4  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 804AE9F8  4B F0 C2 71 */	bl chase_f
/* 804AE9FC  7F C3 F3 78 */	mr r3, r30
/* 804AEA00  7F E4 FB 78 */	mr r4, r31
/* 804AEA04  4B FF FC A1 */	bl aUKI_force_command
/* 804AEA08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AEA0C  40 82 00 B0 */	bne lbl_804AEABC
/* 804AEA10  A8 7E 02 64 */	lha r3, 0x264(r30)
/* 804AEA14  2C 03 00 00 */	cmpwi r3, 0
/* 804AEA18  40 82 00 0C */	bne lbl_804AEA24
/* 804AEA1C  38 00 00 00 */	li r0, 0
/* 804AEA20  48 00 00 10 */	b lbl_804AEA30
lbl_804AEA24:
/* 804AEA24  38 03 FF FF */	addi r0, r3, -1
/* 804AEA28  B0 1E 02 64 */	sth r0, 0x264(r30)
/* 804AEA2C  7C 00 07 34 */	extsh r0, r0
lbl_804AEA30:
/* 804AEA30  2C 00 00 00 */	cmpwi r0, 0
/* 804AEA34  40 82 00 28 */	bne lbl_804AEA5C
/* 804AEA38  80 1E 02 88 */	lwz r0, 0x288(r30)
/* 804AEA3C  2C 00 00 01 */	cmpwi r0, 1
/* 804AEA40  40 82 00 1C */	bne lbl_804AEA5C
/* 804AEA44  7F C3 F3 78 */	mr r3, r30
/* 804AEA48  7F E4 FB 78 */	mr r4, r31
/* 804AEA4C  38 A0 00 06 */	li r5, 6
/* 804AEA50  38 C0 00 00 */	li r6, 0
/* 804AEA54  48 00 09 29 */	bl aUKI_set_proc
/* 804AEA58  48 00 00 64 */	b lbl_804AEABC
lbl_804AEA5C:
/* 804AEA5C  80 1E 02 34 */	lwz r0, 0x234(r30)
/* 804AEA60  2C 00 00 06 */	cmpwi r0, 6
/* 804AEA64  40 82 00 4C */	bne lbl_804AEAB0
/* 804AEA68  7F C3 F3 78 */	mr r3, r30
/* 804AEA6C  4B FF F0 DD */	bl aUKI_clear_spd
/* 804AEA70  A8 7E 02 62 */	lha r3, 0x262(r30)
/* 804AEA74  2C 03 00 00 */	cmpwi r3, 0
/* 804AEA78  40 82 00 0C */	bne lbl_804AEA84
/* 804AEA7C  38 00 00 00 */	li r0, 0
/* 804AEA80  48 00 00 10 */	b lbl_804AEA90
lbl_804AEA84:
/* 804AEA84  38 03 FF FF */	addi r0, r3, -1
/* 804AEA88  B0 1E 02 62 */	sth r0, 0x262(r30)
/* 804AEA8C  7C 00 07 34 */	extsh r0, r0
lbl_804AEA90:
/* 804AEA90  2C 00 00 00 */	cmpwi r0, 0
/* 804AEA94  40 82 00 28 */	bne lbl_804AEABC
/* 804AEA98  7F C3 F3 78 */	mr r3, r30
/* 804AEA9C  7F E4 FB 78 */	mr r4, r31
/* 804AEAA0  38 A0 00 05 */	li r5, 5
/* 804AEAA4  38 C0 00 01 */	li r6, 1
/* 804AEAA8  48 00 08 D5 */	bl aUKI_set_proc
/* 804AEAAC  48 00 00 10 */	b lbl_804AEABC
lbl_804AEAB0:
/* 804AEAB0  7F C3 F3 78 */	mr r3, r30
/* 804AEAB4  7F E4 FB 78 */	mr r4, r31
/* 804AEAB8  4B FF F6 3D */	bl aUKI_coast_wave
lbl_804AEABC:
/* 804AEABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AEAC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AEAC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AEAC8  7C 08 03 A6 */	mtlr r0
/* 804AEACC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AEAD0  4E 80 00 20 */	blr 
