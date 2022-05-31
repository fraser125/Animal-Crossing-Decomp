lbl_804061F4:
/* 804061F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804061F8  7C 08 02 A6 */	mflr r0
/* 804061FC  3C 80 81 1C */	lis r4, this@ha /* 0x811C56B4@ha */
/* 80406200  3C 60 80 66 */	lis r3, lit_348@ha /* 0x8065EBB0@ha */
/* 80406204  90 01 00 24 */	stw r0, 0x24(r1)
/* 80406208  38 00 00 00 */	li r0, 0
/* 8040620C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80406210  3B E3 EB B0 */	addi r31, r3, lit_348@l /* 0x8065EBB0@l */
/* 80406214  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80406218  3B C4 56 B4 */	addi r30, r4, this@l /* 0x811C56B4@l */
/* 8040621C  90 01 00 08 */	stw r0, 8(r1)
lbl_80406220:
/* 80406220  80 7E 00 00 */	lwz r3, 0(r30)
/* 80406224  38 81 00 08 */	addi r4, r1, 8
/* 80406228  38 A0 00 01 */	li r5, 1
/* 8040622C  38 63 00 60 */	addi r3, r3, 0x60
/* 80406230  4B C5 9E ED */	bl osRecvMesg
/* 80406234  80 61 00 08 */	lwz r3, 8(r1)
/* 80406238  38 03 FD 66 */	addi r0, r3, -666
/* 8040623C  28 00 00 07 */	cmplwi r0, 7
/* 80406240  41 81 FF E0 */	bgt lbl_80406220
/* 80406244  54 00 10 3A */	slwi r0, r0, 2
/* 80406248  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8040624C  7C 09 03 A6 */	mtctr r0
/* 80406250  4E 80 04 20 */	bctr 
lbl_80406254:
/* 80406254  4B FF FE F5 */	bl irqmgr_HandleRetrace
/* 80406258  4B FF FF C8 */	b lbl_80406220
lbl_8040625C:
/* 8040625C  4B FF FD 09 */	bl irqmgr_HandlePreNMI
/* 80406260  4B FF FF C0 */	b lbl_80406220
lbl_80406264:
/* 80406264  4B FF FD BD */	bl irqmgr_HandlePreNMI450
/* 80406268  4B FF FF B8 */	b lbl_80406220
lbl_8040626C:
/* 8040626C  4B FF FE 5D */	bl irqmgr_HandlePreNMI480
/* 80406270  4B FF FF B0 */	b lbl_80406220
lbl_80406274:
/* 80406274  4B FF FE D1 */	bl irqmgr_HandlePreNMI500
/* 80406278  4B FF FF A8 */	b lbl_80406220
