lbl_804EAF50:
/* 804EAF50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EAF54  7C 08 02 A6 */	mflr r0
/* 804EAF58  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EAF5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EAF60  7C 9F 23 78 */	mr r31, r4
/* 804EAF64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804EAF68  7C 7E 1B 78 */	mr r30, r3
/* 804EAF6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EAF70  80 1E 0D 60 */	lwz r0, 0xd60(r30)
/* 804EAF74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EAF78  3C 63 00 02 */	addis r3, r3, 2
/* 804EAF7C  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804EAF80  A8 1E 0D 64 */	lha r0, 0xd64(r30)
/* 804EAF84  C0 1E 0D 68 */	lfs f0, 0xd68(r30)
/* 804EAF88  C0 3E 0D 70 */	lfs f1, 0xd70(r30)
/* 804EAF8C  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 804EAF90  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 804EAF94  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 804EAF98  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 804EAF9C  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 804EAFA0  28 03 00 00 */	cmplwi r3, 0
/* 804EAFA4  41 82 00 38 */	beq lbl_804EAFDC
/* 804EAFA8  81 83 00 18 */	lwz r12, 0x18(r3)
/* 804EAFAC  38 61 00 08 */	addi r3, r1, 8
/* 804EAFB0  80 9E 0D 18 */	lwz r4, 0xd18(r30)
/* 804EAFB4  7D 89 03 A6 */	mtctr r12
/* 804EAFB8  4E 80 04 21 */	bctrl 
/* 804EAFBC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EAFC0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804EAFC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EAFC8  D0 1E 0D 1C */	stfs f0, 0xd1c(r30)
/* 804EAFCC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804EAFD0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804EAFD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EAFD8  D0 1E 0D 24 */	stfs f0, 0xd24(r30)
lbl_804EAFDC:
/* 804EAFDC  80 FE 0D 74 */	lwz r7, 0xd74(r30)
/* 804EAFE0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EAFE4  C0 23 65 64 */	lfs f1, lit_603@l(r3)  /* 0x80646564@l */
/* 804EAFE8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EAFEC  38 07 FF FC */	addi r0, r7, -4
/* 804EAFF0  90 FE 0D 2C */	stw r7, 0xd2c(r30)
/* 804EAFF4  20 00 00 00 */	subfic r0, r0, 0
/* 804EAFF8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EAFFC  38 C4 6C 4C */	addi r6, r4, lit_2671@l /* 0x80646C4C@l */
/* 804EB000  FC 40 08 90 */	fmr f2, f1
/* 804EB004  38 83 83 54 */	addi r4, r3, lit_7381@l /* 0x80648354@l */
/* 804EB008  7C A0 01 10 */	subfe r5, r0, r0
/* 804EB00C  C0 84 00 00 */	lfs f4, 0(r4)
/* 804EB010  38 A5 00 09 */	addi r5, r5, 9
/* 804EB014  C0 66 00 00 */	lfs f3, 0(r6)
/* 804EB018  7F C3 F3 78 */	mr r3, r30
/* 804EB01C  7F E4 FB 78 */	mr r4, r31
/* 804EB020  7C A6 2B 78 */	mr r6, r5
/* 804EB024  38 E0 00 00 */	li r7, 0
/* 804EB028  39 00 00 00 */	li r8, 0
/* 804EB02C  4B FE B7 E5 */	bl Player_actor_InitAnimation_Base2
/* 804EB030  38 00 00 00 */	li r0, 0
/* 804EB034  7F C3 F3 78 */	mr r3, r30
/* 804EB038  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 804EB03C  7F E4 FB 78 */	mr r4, r31
/* 804EB040  4B FE A8 B9 */	bl Player_actor_setup_main_Base
/* 804EB044  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EB048  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EB04C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804EB050  7C 08 03 A6 */	mtlr r0
/* 804EB054  38 21 00 20 */	addi r1, r1, 0x20
/* 804EB058  4E 80 00 20 */	blr 
