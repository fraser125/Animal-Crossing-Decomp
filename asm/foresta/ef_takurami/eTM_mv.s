lbl_80620C1C:
/* 80620C1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80620C20  7C 08 02 A6 */	mflr r0
/* 80620C24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80620C28  39 61 00 30 */	addi r11, r1, 0x30
/* 80620C2C  4B A7 A2 A9 */	bl func_8009AED4
/* 80620C30  7C 7D 1B 78 */	mr r29, r3
/* 80620C34  7C 9E 23 78 */	mr r30, r4
/* 80620C38  A8 03 00 00 */	lha r0, 0(r3)
/* 80620C3C  20 00 00 36 */	subfic r0, r0, 0x36
/* 80620C40  7C 1F 07 35 */	extsh. r31, r0
/* 80620C44  40 82 00 10 */	bne lbl_80620C54
/* 80620C48  38 9D 00 10 */	addi r4, r29, 0x10
/* 80620C4C  38 60 01 17 */	li r3, 0x117
/* 80620C50  48 00 D3 59 */	bl sAdo_OngenTrgStart
lbl_80620C54:
/* 80620C54  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80620C58  40 82 00 64 */	bne lbl_80620CBC
/* 80620C5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80620C60  A8 1D 00 52 */	lha r0, 0x52(r29)
/* 80620C64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80620C68  A8 DD 00 4E */	lha r6, 0x4e(r29)
/* 80620C6C  3C 63 00 02 */	addis r3, r3, 2
/* 80620C70  A8 BD 00 50 */	lha r5, 0x50(r29)
/* 80620C74  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 80620C78  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 80620C7C  28 0B 00 00 */	cmplwi r11, 0
/* 80620C80  41 82 00 3C */	beq lbl_80620CBC
/* 80620C84  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80620C88  7F C7 F3 78 */	mr r7, r30
/* 80620C8C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80620C90  38 81 00 08 */	addi r4, r1, 8
/* 80620C94  39 20 00 00 */	li r9, 0
/* 80620C98  39 40 00 00 */	li r10, 0
/* 80620C9C  90 61 00 08 */	stw r3, 8(r1)
/* 80620CA0  38 60 00 11 */	li r3, 0x11
/* 80620CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80620CA8  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80620CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80620CB0  81 8B 00 00 */	lwz r12, 0(r11)
/* 80620CB4  7D 89 03 A6 */	mtctr r12
/* 80620CB8  4E 80 04 21 */	bctrl 
lbl_80620CBC:
/* 80620CBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80620CC0  4B A7 A2 61 */	bl func_8009AF20
/* 80620CC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80620CC8  7C 08 03 A6 */	mtlr r0
/* 80620CCC  38 21 00 30 */	addi r1, r1, 0x30
/* 80620CD0  4E 80 00 20 */	blr 
