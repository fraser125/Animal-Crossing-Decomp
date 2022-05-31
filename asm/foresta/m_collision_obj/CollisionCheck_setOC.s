lbl_80394B9C:
/* 80394B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80394BA0  7C 08 02 A6 */	mflr r0
/* 80394BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80394BA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80394BAC  4B D0 63 29 */	bl func_8009AED4
/* 80394BB0  7C 7D 1B 78 */	mr r29, r3
/* 80394BB4  7C 9E 23 78 */	mr r30, r4
/* 80394BB8  7C BF 2B 78 */	mr r31, r5
/* 80394BBC  48 02 69 9D */	bl _Game_play_isPause
/* 80394BC0  2C 03 00 01 */	cmpwi r3, 1
/* 80394BC4  40 82 00 0C */	bne lbl_80394BD0
/* 80394BC8  38 60 FF FF */	li r3, -1
/* 80394BCC  48 00 00 88 */	b lbl_80394C54
lbl_80394BD0:
/* 80394BD0  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 80394BD4  3C 60 80 65 */	lis r3, OCClearFunctionTable@ha /* 0x80651160@ha */
/* 80394BD8  38 A3 11 60 */	addi r5, r3, OCClearFunctionTable@l /* 0x80651160@l */
/* 80394BDC  7F A3 EB 78 */	mr r3, r29
/* 80394BE0  54 00 10 3A */	slwi r0, r0, 2
/* 80394BE4  7F E4 FB 78 */	mr r4, r31
/* 80394BE8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80394BEC  7D 89 03 A6 */	mtctr r12
/* 80394BF0  4E 80 04 21 */	bctrl 
/* 80394BF4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80394BF8  28 03 00 00 */	cmplwi r3, 0
/* 80394BFC  41 82 00 18 */	beq lbl_80394C14
/* 80394C00  80 03 01 64 */	lwz r0, 0x164(r3)
/* 80394C04  28 00 00 00 */	cmplwi r0, 0
/* 80394C08  40 82 00 0C */	bne lbl_80394C14
/* 80394C0C  38 60 FF FF */	li r3, -1
/* 80394C10  48 00 00 44 */	b lbl_80394C54
lbl_80394C14:
/* 80394C14  80 7E 00 04 */	lwz r3, 4(r30)
/* 80394C18  2C 03 00 32 */	cmpwi r3, 0x32
/* 80394C1C  41 80 00 0C */	blt lbl_80394C28
/* 80394C20  38 60 FF FF */	li r3, -1
/* 80394C24  48 00 00 30 */	b lbl_80394C54
lbl_80394C28:
/* 80394C28  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80394C2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80394C30  41 82 00 0C */	beq lbl_80394C3C
/* 80394C34  38 60 FF FF */	li r3, -1
/* 80394C38  48 00 00 1C */	b lbl_80394C54
lbl_80394C3C:
/* 80394C3C  54 60 10 3A */	slwi r0, r3, 2
/* 80394C40  7C 9E 02 14 */	add r4, r30, r0
/* 80394C44  93 E4 00 08 */	stw r31, 8(r4)
/* 80394C48  80 9E 00 04 */	lwz r4, 4(r30)
/* 80394C4C  38 04 00 01 */	addi r0, r4, 1
/* 80394C50  90 1E 00 04 */	stw r0, 4(r30)
lbl_80394C54:
/* 80394C54  39 61 00 20 */	addi r11, r1, 0x20
/* 80394C58  4B D0 62 C9 */	bl func_8009AF20
/* 80394C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80394C60  7C 08 03 A6 */	mtlr r0
/* 80394C64  38 21 00 20 */	addi r1, r1, 0x20
/* 80394C68  4E 80 00 20 */	blr 
