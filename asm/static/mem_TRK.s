.include "macros.inc"

.section .text

.org 0x800A67D8

.global TRK_fill_mem
TRK_fill_mem:
/* 800A67D8 000A3738  28 05 00 20 */	cmplwi r5, 0x20
/* 800A67DC 000A373C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 800A67E0 000A3740  38 C3 FF FF */	addi r6, r3, -1
/* 800A67E4 000A3744  7C 87 23 78 */	mr r7, r4
/* 800A67E8 000A3748  41 80 00 94 */	blt lbl_800A687C
/* 800A67EC 000A374C  7C C0 30 F8 */	nor r0, r6, r6
/* 800A67F0 000A3750  54 03 07 BF */	clrlwi. r3, r0, 0x1e
/* 800A67F4 000A3754  41 82 00 14 */	beq lbl_800A6808
/* 800A67F8 000A3758  7C A3 28 50 */	subf r5, r3, r5
lbl_800A67FC:
/* 800A67FC 000A375C  34 63 FF FF */	addic. r3, r3, -1
/* 800A6800 000A3760  9C E6 00 01 */	stbu r7, 1(r6)
/* 800A6804 000A3764  40 82 FF F8 */	bne lbl_800A67FC
lbl_800A6808:
/* 800A6808 000A3768  28 07 00 00 */	cmplwi r7, 0
/* 800A680C 000A376C  41 82 00 1C */	beq lbl_800A6828
/* 800A6810 000A3770  54 E3 C0 0E */	slwi r3, r7, 0x18
/* 800A6814 000A3774  54 E0 80 1E */	slwi r0, r7, 0x10
/* 800A6818 000A3778  54 E4 40 2E */	slwi r4, r7, 8
/* 800A681C 000A377C  7C 60 03 78 */	or r0, r3, r0
/* 800A6820 000A3780  7C 80 03 78 */	or r0, r4, r0
/* 800A6824 000A3784  7C E7 03 78 */	or r7, r7, r0
lbl_800A6828:
/* 800A6828 000A3788  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 800A682C 000A378C  38 66 FF FD */	addi r3, r6, -3
/* 800A6830 000A3790  41 82 00 2C */	beq lbl_800A685C
lbl_800A6834:
/* 800A6834 000A3794  90 E3 00 04 */	stw r7, 4(r3)
/* 800A6838 000A3798  34 84 FF FF */	addic. r4, r4, -1
/* 800A683C 000A379C  90 E3 00 08 */	stw r7, 8(r3)
/* 800A6840 000A37A0  90 E3 00 0C */	stw r7, 0xc(r3)
/* 800A6844 000A37A4  90 E3 00 10 */	stw r7, 0x10(r3)
/* 800A6848 000A37A8  90 E3 00 14 */	stw r7, 0x14(r3)
/* 800A684C 000A37AC  90 E3 00 18 */	stw r7, 0x18(r3)
/* 800A6850 000A37B0  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 800A6854 000A37B4  94 E3 00 20 */	stwu r7, 0x20(r3)
/* 800A6858 000A37B8  40 82 FF DC */	bne lbl_800A6834
lbl_800A685C:
/* 800A685C 000A37BC  54 A4 F7 7F */	rlwinm. r4, r5, 0x1e, 0x1d, 0x1f
/* 800A6860 000A37C0  41 82 00 10 */	beq lbl_800A6870
lbl_800A6864:
/* 800A6864 000A37C4  34 84 FF FF */	addic. r4, r4, -1
/* 800A6868 000A37C8  94 E3 00 04 */	stwu r7, 4(r3)
/* 800A686C 000A37CC  40 82 FF F8 */	bne lbl_800A6864
lbl_800A6870:
/* 800A6870 000A37D0  38 00 00 03 */	li r0, 3
/* 800A6874 000A37D4  38 C3 00 03 */	addi r6, r3, 3
/* 800A6878 000A37D8  7C A5 00 38 */	and r5, r5, r0
lbl_800A687C:
/* 800A687C 000A37DC  28 05 00 00 */	cmplwi r5, 0
/* 800A6880 000A37E0  4D 82 00 20 */	beqlr 
lbl_800A6884:
/* 800A6884 000A37E4  34 A5 FF FF */	addic. r5, r5, -1
/* 800A6888 000A37E8  9C E6 00 01 */	stbu r7, 1(r6)
/* 800A688C 000A37EC  40 82 FF F8 */	bne lbl_800A6884
/* 800A6890 000A37F0  4E 80 00 20 */	blr 