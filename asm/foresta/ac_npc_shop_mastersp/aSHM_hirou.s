lbl_8057DE30:
/* 8057DE30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DE34  7C 08 02 A6 */	mflr r0
/* 8057DE38  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057DE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DE40  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057DE44  3C A5 00 02 */	addis r5, r5, 2
/* 8057DE48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DE4C  7C 9F 23 78 */	mr r31, r4
/* 8057DE50  38 A5 04 5E */	addi r5, r5, 0x45e
/* 8057DE54  93 C1 00 08 */	stw r30, 8(r1)
/* 8057DE58  7C 7E 1B 78 */	mr r30, r3
/* 8057DE5C  A8 03 09 AE */	lha r0, 0x9ae(r3)
/* 8057DE60  2C 00 00 0A */	cmpwi r0, 0xa
/* 8057DE64  40 82 00 14 */	bne lbl_8057DE78
/* 8057DE68  A8 1E 09 AC */	lha r0, 0x9ac(r30)
/* 8057DE6C  54 00 08 3C */	slwi r0, r0, 1
/* 8057DE70  7C 85 02 2E */	lhzx r4, r5, r0
/* 8057DE74  4B FF F0 01 */	bl aSHM_remove_gift
lbl_8057DE78:
/* 8057DE78  A8 7E 09 AE */	lha r3, 0x9ae(r30)
/* 8057DE7C  2C 03 00 00 */	cmpwi r3, 0
/* 8057DE80  40 81 00 10 */	ble lbl_8057DE90
/* 8057DE84  38 03 FF FF */	addi r0, r3, -1
/* 8057DE88  B0 1E 09 AE */	sth r0, 0x9ae(r30)
/* 8057DE8C  48 00 00 48 */	b lbl_8057DED4
lbl_8057DE90:
/* 8057DE90  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE10@ha */
/* 8057DE94  80 9E 09 BC */	lwz r4, 0x9bc(r30)
/* 8057DE98  80 BE 09 C0 */	lwz r5, 0x9c0(r30)
/* 8057DE9C  38 63 FE 10 */	addi r3, r3, 0xFE10 /* 0x0000FE10@l */
/* 8057DEA0  38 C0 00 00 */	li r6, 0
/* 8057DEA4  4B E2 97 A9 */	bl mFI_UtNumtoFGSet_common
/* 8057DEA8  A8 9E 09 B0 */	lha r4, 0x9b0(r30)
/* 8057DEAC  7F C3 F3 78 */	mr r3, r30
/* 8057DEB0  38 04 00 01 */	addi r0, r4, 1
/* 8057DEB4  7C 04 07 34 */	extsh r4, r0
/* 8057DEB8  4B FF EA 71 */	bl aSHM_set_start_avoid_pos
/* 8057DEBC  38 00 00 0A */	li r0, 0xa
/* 8057DEC0  7F C3 F3 78 */	mr r3, r30
/* 8057DEC4  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8057DEC8  7F E4 FB 78 */	mr r4, r31
/* 8057DECC  38 A0 00 0E */	li r5, 0xe
/* 8057DED0  48 00 03 71 */	bl aSHM_setup_think_proc
lbl_8057DED4:
/* 8057DED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DEDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057DEE0  7C 08 03 A6 */	mtlr r0
/* 8057DEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DEE8  4E 80 00 20 */	blr 
