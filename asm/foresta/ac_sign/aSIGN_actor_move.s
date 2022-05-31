lbl_804A2958:
/* 804A2958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A295C  7C 08 02 A6 */	mflr r0
/* 804A2960  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A2968  7C 7F 1B 78 */	mr r31, r3
/* 804A296C  93 C1 00 08 */	stw r30, 8(r1)
/* 804A2970  7C 9E 23 78 */	mr r30, r4
/* 804A2974  81 83 01 74 */	lwz r12, 0x174(r3)
/* 804A2978  7D 89 03 A6 */	mtctr r12
/* 804A297C  4E 80 04 21 */	bctrl 
/* 804A2980  7F E3 FB 78 */	mr r3, r31
/* 804A2984  4B FF FD 0D */	bl aSIGN_single_all_check
/* 804A2988  7F E3 FB 78 */	mr r3, r31
/* 804A298C  7F C4 F3 78 */	mr r4, r30
/* 804A2990  4B FF EC 0D */	bl aSIGN_actor_set_draw
/* 804A2994  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A2998  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A299C  80 63 00 00 */	lwz r3, 0(r3)
/* 804A29A0  A8 03 16 96 */	lha r0, 0x1696(r3)
/* 804A29A4  2C 00 00 00 */	cmpwi r0, 0
/* 804A29A8  41 82 00 60 */	beq lbl_804A2A08
/* 804A29AC  A8 03 16 94 */	lha r0, 0x1694(r3)
/* 804A29B0  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804A29B4  41 82 00 0C */	beq lbl_804A29C0
/* 804A29B8  2C 00 00 64 */	cmpwi r0, 0x64
/* 804A29BC  40 82 00 1C */	bne lbl_804A29D8
lbl_804A29C0:
/* 804A29C0  48 00 00 61 */	bl aSIGN_random_set
/* 804A29C4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A29C8  38 00 00 00 */	li r0, 0
/* 804A29CC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A29D0  80 63 00 00 */	lwz r3, 0(r3)
/* 804A29D4  B0 03 16 94 */	sth r0, 0x1694(r3)
lbl_804A29D8:
/* 804A29D8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A29DC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A29E0  80 63 00 00 */	lwz r3, 0(r3)
/* 804A29E4  A8 03 16 94 */	lha r0, 0x1694(r3)
/* 804A29E8  2C 00 00 0A */	cmpwi r0, 0xa
/* 804A29EC  40 82 00 1C */	bne lbl_804A2A08
/* 804A29F0  48 00 01 79 */	bl aSIGN_all_clear
/* 804A29F4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A29F8  38 00 00 00 */	li r0, 0
/* 804A29FC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A2A00  80 63 00 00 */	lwz r3, 0(r3)
/* 804A2A04  B0 03 16 94 */	sth r0, 0x1694(r3)
lbl_804A2A08:
/* 804A2A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2A10  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A2A14  7C 08 03 A6 */	mtlr r0
/* 804A2A18  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2A1C  4E 80 00 20 */	blr 
